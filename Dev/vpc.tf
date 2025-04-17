module "vpc" {
  source = "../Modulos/vpc"

  name        = "Vpc-Dev"
  vpc_cidr    = "192.168.18.0/23"
  enable_ipv6 = true

  tags = {
    Ambiente = "Dev"
  }
}
