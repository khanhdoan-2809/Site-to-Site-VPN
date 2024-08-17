resource "aws_customer_gateway" "customer_gateway" {
  bgp_asn    = 65000
  type       = "ipsec.1"
  ip_address = var.mv_cgw_ip_address

  tags = {
    Name = var.mv_cgw_name
  }
}
