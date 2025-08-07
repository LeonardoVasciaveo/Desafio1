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
  description = "Restringe o acesso ao cluster para o meu IP"
  type        = string
  default     = "187.95.17.53/32"
}
variable "cluster_version" {
  default = "1.30" 
}



