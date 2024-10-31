resource "aws_subnet" "this" {
  for_each               = { for idx, subnet in var.subnet_configs : idx => subnet }
  vpc_id                 = var.vpc_id
  cidr_block             = each.value.cidr_block
  availability_zone      = each.value.az
  map_public_ip_on_launch = each.value.public
}