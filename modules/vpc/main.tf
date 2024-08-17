resource "aws_vpc" "main" {
  cidr_block = var.mv_vpc_cidr_block

  tags = {
    Name = var.mv_vpc_name
  }
}
