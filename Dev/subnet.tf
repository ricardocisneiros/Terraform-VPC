module "subnets" {
  source      = "../Modulos/subnet"
  vpc_id      = module.vpc.vpc_id
  name_prefix = "Subnet-Dev"

  public_subnet_count  = 2
  private_subnet_count = 2

  public_subnet_cidrs = [
    "192.168.18.0/25",
    "192.168.18.128/25"
  ]

  private_subnet_cidrs = [
    "192.168.19.0/25",
    "192.168.19.128/25"

  ]

  ipv6_cidr_block_pub = {
    us-east-1a = cidrsubnet(module.vpc.vpc_ipv6_cidr_block, 8, 1)
    us-east-1c = cidrsubnet(module.vpc.vpc_ipv6_cidr_block, 8, 2)
  }

  ipv6_cidr_block_priv = {
    us-east-1a = cidrsubnet(module.vpc.vpc_ipv6_cidr_block, 8, 3)
    us-east-1c = cidrsubnet(module.vpc.vpc_ipv6_cidr_block, 8, 4)
  }

  
  assign_ipv6_address_on_creation = true


  public_availability_zones  = ["us-east-1a", "us-east-1d"]
  private_availability_zones = ["us-east-1a", "us-east-1d"]
}