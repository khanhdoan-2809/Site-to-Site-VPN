output "public_ip" {
    value = aws_instance.customer_gateway_instance.public_ip
}