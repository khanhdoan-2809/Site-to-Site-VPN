// vpc
variable "lv_vpc_name" {
  type    = string
}

variable "lv_vpc_cidr_block" {
  type    = string
}

// subnet
variable "lv_availability_zone" {
  type    = string
}

variable "lv_subnet_cidr_block_public" {
  type    = string
}

variable "lv_subnet_name_public" {
  type    = string
}

variable "lv_map_public_ip_on_launch_public" {
  type = bool
}

// internet gatway
variable "lv_igw_name" {
  type = string
}

// route table
variable "lv_route_table_name" {
  type = string
}

variable "lv_route_destination" {
  type = string
}

// security group
variable "lv_sg_name" {
  type = string
}

variable "lv_sg_description" {
  type = string
}

// ec2
variable "lv_ec2_name" {
  type    = string
}

variable "lv_ec2_instance_type" {
    type    = string
}

// virtual gateway
variable "lv_vgw_name" {
  type    = string
}

// customer gateway
variable "lv_cgw_name" {
  type    = string
}

// vpn connection
variable "lv_vpn_connection_name" {
  type    = string
}