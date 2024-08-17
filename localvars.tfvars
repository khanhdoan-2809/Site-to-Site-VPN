// vpc
lv_vpc_cidr_block = "10.11.0.0/16"
lv_vpc_name       = "ASG VPN"

// subnet
lv_availability_zone               = "ap-southeast-1a"
lv_subnet_name_public              = "VPN Public"
lv_subnet_cidr_block_public        = "10.11.1.0/24"
lv_map_public_ip_on_launch_public  = true


// internet gatway
lv_igw_name = "Internet Gateway VPN"

// route_table
lv_route_table_name    = "Routable VPN - Public"
lv_route_destination   = "0.0.0.0/0"

// security group
lv_sg_name        = "VPN Public-SG"
lv_sg_description = "Allow IPSec, SSH, and Ping for servers in public subnet"

// ec2
lv_ec2_name          = "Customer Gateway Instance"
lv_ec2_instance_type = "t2.micro"