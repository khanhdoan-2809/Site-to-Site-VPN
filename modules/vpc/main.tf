resource "aws_vpc" "vpc_asg_vpn" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}
