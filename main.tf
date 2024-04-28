module "vpc" {
    source = "./vpc"
}

module "ec2" {
  source = "./web"
  sbnt = module.vpc.public_sb
  sgp = module.vpc.public_sg
}
