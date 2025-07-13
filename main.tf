module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = "VPC-Ecommerce"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.4"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  subnet_ids = module.vpc.private_subnets
  vpc_id     = module.vpc.vpc_id

  enable_irsa = true
  authentication_mode = "API"
  cluster_endpoint_public_access        = true
  cluster_endpoint_public_access_cidrs = [var.my_ip]
  cluster_endpoint_private_access       = true

  cluster_addons = {
    coredns    = { resolve_conflicts = "OVERWRITE" }
    kube-proxy = { resolve_conflicts = "OVERWRITE" }
    vpc-cni    = { resolve_conflicts = "OVERWRITE" }
  }

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
      capacity_type  = "SPOT"

      tags = {
        Name = "eks-node"
      }
    }
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }

  provider "datadog" {}

resource "datadog_dashboard" "ecommerce" {
  title       = "Ecommerce Dashboard"
  description = "Monitoramento da aplicação ecommerce"
  layout_type = "ordered"

  widget {
    group_definition {
      title = "CPU por host"
      layout_type = "ordered"
      widget {
        timeseries_definition {
          title = "CPU %"
          show_legend = true
          request {
            q = "avg:system.cpu.user{*} by {host}"
            display_type = "line"
          }
        }
      }
    }
  }
}

}
