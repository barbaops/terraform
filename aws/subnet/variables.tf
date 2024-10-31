variable "name" {
  description = "Prefixo para nomear as subnets"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC para associar às subnets"
  type        = string
}

variable "private_subnet_configs" {
  description = "Lista de objetos com a configuração das subnets privadas (CIDR e zona)"
  type = list(object({
    cidr_block = string
    az         = string
  }))
}

variable "public_subnet_configs" {
  description = "Lista de objetos com a configuração das subnets públicas (CIDR e zona)"
  type = list(object({
    cidr_block = string
    az         = string
  }))
}

variable "associate_route_table" {
  description = "Define se a tabela de rotas deve ser associada às subnets privadas"
  type        = bool
  default     = false
}

variable "route_table_id" {
  description = "ID da tabela de rotas para associar às subnets privadas (opcional)"
  type        = string
  default     = null
}