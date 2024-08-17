resource "aws_vpn_gateway" "virtual_gateway" {
  vpc_id = var.mv_vpc_id

  tags = {
    Name = var.mv_vgw_name
  }
}
