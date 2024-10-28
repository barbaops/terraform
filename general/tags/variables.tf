variable "project" {
  description = "Nome do projeto ao qual o recurso pertence."
  type        = string
}

variable "environment" {
  description = "Ambiente do recurso. Valores aceitos: 'dev', 'uat', 'prod'."
  type        = string
}

variable "responsible_team" {
  description = "Time responsável pelo recurso."
  type        = string
}

variable "cost_center" {
  description = "Centro de custo associado ao recurso."
  type        = string
}

variable "created_date" {
  description = "Data de criação do recurso."
  type        = string
  default     = ""
}

variable "compliance_status" {
  description = "Status de conformidade do recurso.'compliant', 'non-compliant'."
  type        = string
  default     = "compliant"
}

variable "business_criticality" {
  description = "Nível de criticidade do recurso. Exemplo:  'critical', 'high', 'medium', 'low'."
  type        = string
  default     = "medium"
}

variable "additional_tags" {
  description = "Tags adicionais específicas do recurso em formato de mapa chave-valor."
  type        = map(string)
  default     = {}
}
