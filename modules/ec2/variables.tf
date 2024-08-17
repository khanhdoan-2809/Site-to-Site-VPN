variable "mv_ec2_name" {
  type    = string
}

variable "mv_ec2_ami" {
    type    = string
}

variable "mv_ec2_instance_type" {
    type    = string
}

variable "mv_ec2_subnet_id" {
    type    = string
}
variable "mv_ec2_vpc_security_group_ids" {
    type    = list(string)
}