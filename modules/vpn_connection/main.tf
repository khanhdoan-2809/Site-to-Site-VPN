resource "aws_vpn_connection" "main" {
  vpn_gateway_id      = var.mv_vgw_id
  customer_gateway_id = var.mv_cgw_id
  type                = "ipsec.1"
  static_routes_only  = true

  tags = {
    Name = var.mv_vpn_connection_name
  }
}

resource "aws_vpn_connection_route" "static_route" {
  destination_cidr_block = "10.11.0.0/16"
  vpn_connection_id      = aws_vpn_connection.main.id
}