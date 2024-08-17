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

variable "lv_internet_gateway_id" {
  type = string
}

// route table
variable "lv_route_table_name" {
  type = string
}

variable "lv_route_destination" {
  type = string
}