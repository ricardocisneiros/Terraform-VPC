resource "aws_subnet" "public" {
  count              = var.public_subnet_count
  vpc_id             = var.vpc_id
  cidr_block         = var.public_subnet_cidrs[count.index]
  availability_zone  = element(var.public_availability_zones, count.index)
  ipv6_cidr_block = element(values(var.ipv6_cidr_block_pub), count.index)
  assign_ipv6_address_on_creation= var.assign_ipv6_address_on_creation

  map_public_ip_on_launch = true


  tags = {
    Name = "${var.name_prefix}-public-${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count              = var.private_subnet_count
  vpc_id             = var.vpc_id
  cidr_block         = var.private_subnet_cidrs[count.index]
  availability_zone  = element(var.private_availability_zones, count.index)
  ipv6_cidr_block = element(values(var.ipv6_cidr_block_priv), count.index)
  assign_ipv6_address_on_creation= var.assign_ipv6_address_on_creation

  tags = {
    Name = "${var.name_prefix}-private-${count.index + 1}"
  }
}
