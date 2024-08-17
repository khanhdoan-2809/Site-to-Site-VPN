module "vpc" { 
    source            = "./modules/vpc"
    mv_vpc_cidr_block = var.lv_vpc_cidr_block
    mv_vpc_name       = var.lv_vpc_name
}

module "public_subnet" { 
    source                     = "./modules/subnet"
    mv_availability_zone       = var.lv_availability_zone
    mv_vpc_cidr_block          = var.lv_subnet_cidr_block_public
    mv_vpc_id                  = module.vpc.id
    mv_subnet_name             = var.lv_subnet_name_public
    mv_map_public_ip_on_launch = var.lv_map_public_ip_on_launch_public
}

module "internet_gateway" { 
    source            = "./modules/internet_gateway"
    mv_vpc_id         = module.vpc.id
    mv_igw_name       = var.lv_igw_name
}

module "route_table" { 
    source                        = "./modules/route_table"
    mv_vpc_id                     = module.vpc.id
    mv_route_table_name           = var.lv_route_table_name
    mv_internet_gateway_id        = module.internet_gateway.id
    mv_route_destination          = var.lv_route_destination

    // subnet association
    mv_subnet_id = module.public_subnet.id
}

module "security_group" {
    source            = "./modules/security_group"
    mv_sg_name        = var.lv_sg_name
    mv_sg_description = var.lv_sg_description
    mv_vpc_id         = module.vpc.id
}

module "ec2" {
    source                         = "./modules/ec2"
    mv_ec2_name                    = var.lv_ec2_name
    mv_ec2_ami                     = data.aws_ami.amzn-linux-2023-ami.id
    mv_ec2_instance_type           = var.lv_ec2_instance_type
    mv_ec2_subnet_id               = module.public_subnet.id
    mv_ec2_vpc_security_group_ids  = [module.security_group.id]
}