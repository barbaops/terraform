variable "vpc_id" {
  description = "VPC ID to associate with the subnets"
  type        = string
}

variable "subnet_configs" {
  description = "Configuration for each subnet, including CIDR block and availability zone"
  type = list(object({
    cidr_block = string
    az         = string
    public     = bool
  }))
}