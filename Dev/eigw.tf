module "eigw" {
  source      = "../Modulos/eigw"
  vpc_id      = module.vpc.vpc_id
  name_prefix = "Dev"

  tags = {
    Ambiente = "Dev"
  }
}
