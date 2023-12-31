module "VPC" {
    source = "./modules/VPC"
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
}

module "SG" {
    source = "./modules/SG"
    vpc_id = module.vpc.vpc_id
}

module "EC2" {
    source = "./modules/EC2"
    sg_id = module.SG.sg_id
    subnets = module.vpc.subnet_ids
}

module "ALB" {
    source = "./modules/ALB"
    sg_id = module.SG.sg_id
    subnets = module.vpc.subnet_ids
    vpc_id = module.vpc.vpc_id
    Instance = module.EC2.Instance
}
