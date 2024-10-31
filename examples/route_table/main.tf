module "private_route_table_management" {
  source            = "../../aws/route_table"
  vpc_id            = "vpc-0748a9c2fabbdb7b3"
  private_subnet_ids = ["subnet-abcde123", "subnet-98765def"]
}