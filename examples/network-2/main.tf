module "vpc" {
  source              = "../../aws/vpc"
  vpc_cidr            = "10.1.0.0/16"
  enable_dns_support  = true
  enable_dns_hostnames = true
  name                = "wb-2"
}

module "private_route_table" {
  source      = "../../aws/route_table"
  name        = "wb-2"
  vpc_id      = module.vpc.vpc_id
}

module "subnets" {
  source                 = "../../aws/subnet"
  vpc_id                 = module.vpc.vpc_id
  name                   = "wb-2"
  route_table_id         = module.private_route_table.route_table_id
  associate_route_table  = true  # Define se deseja associar a tabela de rotas às subnets privadas

  private_subnet_configs = [
    { cidr_block = "10.1.3.0/24", az = "us-east-1a" },
    { cidr_block = "10.1.4.0/24", az = "us-east-1b" },
  ]

  public_subnet_configs = [
    { cidr_block = "10.1.1.0/24", az = "us-east-1a" },
    { cidr_block = "10.1.2.0/24", az = "us-east-1b" },
  ]
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_route_table_id" {
  value = module.private_route_table.route_table_id
}

output "private_subnet_ids" {
  value = module.subnets.private_subnet_ids
}

output "public_subnet_ids" {
  value = module.subnets.public_subnet_ids
}
