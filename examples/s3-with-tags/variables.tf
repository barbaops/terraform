variable "aws_region" {
  description = "Região AWS para o bucket S3"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "acl" {
  description = "Controle de acesso do bucket S3"
  type        = string
  default     = "private"
}

variable "project" {
  description = "Nome do projeto"
  type        = string
}

variable "environment" {
  description = "Ambiente do recurso (dev, test, staging, prod)"
  type        = string
}

variable "responsible_team" {
  description = "Time responsável pelo recurso"
  type        = string
}

variable "cost_center" {
  description = "Centro de custo associado ao recurso"
  type        = string
}

variable "compliance_status" {
  description = "Status de conformidade do recurso"
  type        = string
  default     = "compliant"
}

variable "business_criticality" {
  description = "Nível de criticidade do recurso (high, medium, low)"
  type        = string
  default     = "medium"
}

variable "additional_tags" {
  description = "Tags adicionais específicas do recurso"
  type        = map(string)
  default     = {}
}
