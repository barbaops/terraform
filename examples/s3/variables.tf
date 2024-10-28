variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy into"
  type        = string
  default     = "us-east-2"
}

variable "tags" {
  description = "Mapa de tags para aplicar ao bucket S3"
  type        = map(string)
  default     = {}
}