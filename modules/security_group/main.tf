resource "aws_security_group" "vpn-public-sg" {
  name        = var.mv_sg_name
  description = var.mv_sg_description
  vpc_id      = var.mv_vpc_id

  tags = {
    Name = var.mv_sg_name
  }

  // terraform will delete default outbound rule of aws
  // so recreate new one
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "default outbound rule in aws" 
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4" {
  security_group_id = aws_security_group.vpn-public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
  description       = "Allow SSH" 
}

resource "aws_vpc_security_group_ingress_rule" "allow_imcp_ipv4" {
  security_group_id = aws_security_group.vpn-public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = -1 
  ip_protocol       = "icmp"
  to_port           = -1 
  description = "Allow All ICMP - IPv4"
}

resource "aws_vpc_security_group_ingress_rule" "allow_custom_tcp_ipv4" {
  security_group_id = aws_security_group.vpn-public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 500
  ip_protocol       = "tcp"
  to_port           = 500
  description = "Allow Custom TCP on port 500"
}

resource "aws_vpc_security_group_ingress_rule" "allow_custom_udp_ipv4" {
  security_group_id = aws_security_group.vpn-public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 400
  ip_protocol       = "udp"
  to_port           = 400
  description = "Allow Custom TCP on port 400"
}