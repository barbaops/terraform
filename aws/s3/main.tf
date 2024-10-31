terraform {
  required_version = ">= 1.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  # Versionamento do bucket (se habilitado)
  versioning {
    enabled = var.versioning
  }

  # Ciclo de vida (lifecycle rules)
  lifecycle_rule {
    count    = length(var.lifecycle_rules)
    id       = var.lifecycle_rules[count.index].id
    enabled  = var.lifecycle_rules[count.index].enabled

    expiration {
      days = var.lifecycle_rules[count.index].expiration_days
    }
  }

  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  count                   = var.block_public_access ? 1 : 0
  bucket                  = aws_s3_bucket.bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}





