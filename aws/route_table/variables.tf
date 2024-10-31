variable "name" {
  description = "Prefixo para nomear a tabela de rotas"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC para associar à tabela de rotas"
  type        = string
}