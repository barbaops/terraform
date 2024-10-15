variable "bucket_name" {
  description = "O nome do bucket S3."
  type        = string
}

variable "region" {
  description = "Região AWS."
  type        = string
  default     = "us-east-1"
}

variable "acl" {
  description = "O controle de acesso ao bucket S3."
  type        = string
  default     = "private"
}

variable "versioning_status" {
  description = "Status de versionamento do bucket."
  type        = string
  default     = "Enabled"
}

variable "block_public_acls" {
  description = "Bloquear ACLs públicas."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Bloquear políticas públicas."
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Ignorar ACLs públicas."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Restringir buckets públicos."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags a serem aplicadas ao bucket S3."
  type        = map(string)
  default     = {}
}
