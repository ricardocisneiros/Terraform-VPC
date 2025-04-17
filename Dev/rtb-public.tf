module "rtb_public" {
  source      = "../Modulos/route-table"
  vpc_id      = module.vpc.vpc_id
  name_prefix = "Route-Table-Dev-Public"
  subnet_ids  = [
    module.subnets.public_subnet_ids[0],
    module.subnets.public_subnet_ids[1]
    ]

  tags = {
    Environment = "Dev"
  }

  routes = {
    "0.0.0.0/0" = {
      gateway_id = module.igw.internet_gateway_id
    }
    "::/0" = {
      egress_only_gateway_id = module.eigw.egress_only_internet_gateway_id
    }
  }
}
