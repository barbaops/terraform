terraform {
  required_version = ">= 1.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "tags" {
  source              = "../../general/tags"
  project             = var.project
  environment         = var.environment
  responsible_team    = var.responsible_team
  cost_center         = var.cost_center
  compliance_status   = var.compliance_status
  business_criticality = var.business_criticality
  additional_tags     = var.additional_tags
}

module "s3_bucket" {
  source      = "../../aws/s3"
  bucket_name = var.bucket_name
  tags        = module.tags.tags 
  # Do NOT copy this into product code. We only set this param to true here so that the automated tests can clean up.
  force_destroy = true

}

