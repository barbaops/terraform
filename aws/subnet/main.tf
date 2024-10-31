resource "aws_subnet" "private" {
  for_each              = { for idx, subnet in var.private_subnet_configs : idx => subnet }
  vpc_id                = var.vpc_id
  cidr_block            = each.value.cidr_block
  availability_zone     = each.value.az
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.name}-private-${each.key}"
  }
}

# Criando subnets públicas
resource "aws_subnet" "public" {
  for_each              = { for idx, subnet in var.public_subnet_configs : idx => subnet }
  vpc_id                = var.vpc_id
  cidr_block            = each.value.cidr_block
  availability_zone     = each.value.az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-public-${each.key}"
  }
}

# Associação da tabela de rotas após criação das subnets privadas, se habilitado
resource "aws_route_table_association" "private_associations" {
  for_each      = var.associate_route_table ? aws_subnet.private : {}
  subnet_id     = each.value.id
  route_table_id = var.route_table_id

  depends_on = [aws_subnet.private]
}