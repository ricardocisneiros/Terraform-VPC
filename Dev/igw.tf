module "igw" {
  source      = "../Modulos/igw"
  vpc_id      = module.vpc.vpc_id  
  name_prefix = "Dev"
  tags = {
    Ambiente = "Dev"
  }
}
