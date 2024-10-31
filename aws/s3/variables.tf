variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "versioning" {
  description = "Habilitar versionamento do bucket"
  type        = bool
  default     = false
}

variable "lifecycle_rules" {
  description = "Lista de regras de ciclo de vida do bucket S3"
  type = list(object({
    id              = string
    enabled         = bool
    expiration_days = number
  }))
  default = []
}

variable "tags" {
  description = "Tags do bucket"
  type        = map(string)
  default     = {}
}
