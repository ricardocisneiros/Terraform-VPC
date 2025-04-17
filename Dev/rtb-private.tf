#    "0.0.0.0/0" = module.nat_gateway.nat_gateway_id
module "rtb_private" {
  source      = "../Modulos/route-table"
  vpc_id      = module.vpc.vpc_id
  name_prefix = "Route-Table-Dev-Private"
  subnet_ids  = [
    module.subnets.private_subnet_ids[0],
    module.subnets.private_subnet_ids[1]
    ]

  tags = {
    Environment = "Dev"
  }

  routes = {
    "0.0.0.0/0" = {
      gateway_id = module.nat_gateway.nat_gateway_id
    }
    "::/0" = {
      egress_only_gateway_id = module.eigw.egress_only_internet_gateway_id
    }
  }
}
