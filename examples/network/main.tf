module "vpc" {
  source = "../../aws/vpc"
  vpc_cidr = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

module "subnets" {
  source = "../../aws/subnet"
  vpc_id = module.vpc.vpc_id

  subnet_configs = [
    { cidr_block = "10.0.1.0/24", az = "us-east-1a", public = true },
    { cidr_block = "10.0.2.0/24", az = "us-east-1b", public = true },
    { cidr_block = "10.0.3.0/24", az = "us-east-1a", public = false },
    { cidr_block = "10.0.4.0/24", az = "us-east-1b", public = false },
  ]
}
