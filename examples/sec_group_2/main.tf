module "security_group" {
  source = "../../aws/security_group"

  name    = "wb-2-sg"
  vpc_id  = "vpc-0d440e308c7d26c41"

  ingress_rules = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTP access from anywhere"
    },
    {
      from_port   = -1
      to_port     = -1
      protocol    = "icmp"
      cidr_blocks = ["10.0.0.0/8"]
      description = "Allow all ICMP from 10.0.0.0/8"
    },
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.1.0.0/16"]
      description = "Allow all outbound traffic within the VPC"
    }
  ]
}
