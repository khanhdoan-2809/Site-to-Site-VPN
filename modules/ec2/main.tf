resource "aws_instance" "customer_gateway_instance" {
  associate_public_ip_address = true
  key_name                    = "KeyPair"
  ami                         = var.mv_ec2_ami
  instance_type               = var.mv_ec2_instance_type
  subnet_id                   = var.mv_ec2_subnet_id
  vpc_security_group_ids      = var.mv_ec2_vpc_security_group_ids

  tags = {
    Name = var.mv_ec2_name
  }
}
