
module "networking" {
  source              = "./networking"
  vpc_cidr_block      = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
}

module "security_groups" {
  source = "./security_groups"
  vpc_id = module.networking.vpc_id
}

module "web_tier" {
  source           = "./web_tier"
  ami              = "ami-0c55b159cbfafe1f0"
  instance_type    = "t2.micro"
  public_subnet_id = module.networking.public_subnet_id
  web_sg_id        = module.security_groups.web_sg_id
}

module "app_tier" {
  source            = "./app_tier"
  ami               = "ami-0c55b159cbfafe1f0"
  instance_type     = "t2.micro"
  private_subnet_id = module.networking.private_subnet_id
  app_sg_id         = module.security_groups.app_sg_id
}
    