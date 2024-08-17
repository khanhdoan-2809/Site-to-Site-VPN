resource "aws_subnet" "main" {
  availability_zone       = var.mv_availability_zone
  vpc_id                  = var.mv_vpc_id
  cidr_block              = var.mv_vpc_cidr_block
  map_public_ip_on_launch = var.mv_map_public_ip_on_launch

  tags = {
    Name = var.mv_subnet_name
  }
}
