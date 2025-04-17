module "nat_gateway" {
  source = "../Modulos/nat-gateway"

  nat_gw_name = "Dev"
  subnet_id   =  module.subnets.public_subnet_ids[0]
  tags = {
    Ambiente  = "Dev"
  }
}