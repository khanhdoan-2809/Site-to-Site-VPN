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