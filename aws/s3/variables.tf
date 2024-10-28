variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "block_public_access" {
  description = "If set to true, block all public access on this bucket."
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "If set to true, delete all the contents of the bucket when running 'destroy' on this resource. Should typically only be enabled for automated testing."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Mapa de tags para aplicar ao bucket S3"
  type        = map(string)
  default     = {}
}