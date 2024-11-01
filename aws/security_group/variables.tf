variable "name" {
  description = "Nome do Security Group"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC para o Security Group"
  type        = string
}

variable "ingress_rules" {
  description = "Lista de regras de entrada (ingress) para o Security Group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}

variable "egress_rules" {
  description = "Lista de regras de saída (egress) para o Security Group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}