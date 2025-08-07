variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nome do cluster"
  type        = string
  default     = "eks-desafio1"
}

variable "my_ip" {
  description = "Seu IP para acesso ao cluster EKS"
  type        = string
  default     = "187.95.17.53/32"
}

variable "cluster_version" {
  default = "1.30"
}

variable "datadog_api_key" {
  description = "Datadog API key"
  type        = string
  sensitive   = true
}

variable "app_namespace" {
  description = "Namespace da aplicação"
  type        = string
  default     = "ecommerce"
}
