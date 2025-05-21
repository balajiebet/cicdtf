module "vpc" {
  source = "./VPC"
}

module "ec2" {
  source = "./EC2"

  main_subnet_id = module.vpc.main_subnet_id
  main_sg_id     = module.vpc.main_sg_id
}