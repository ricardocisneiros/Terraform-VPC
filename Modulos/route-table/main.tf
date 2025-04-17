resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  tags = merge({
    Name = "${var.name_prefix}"
  }, var.tags)
}

resource "aws_route" "custom_routes" {
  for_each = var.routes

  route_table_id = aws_route_table.this.id

  destination_cidr_block      = can(regex(":", each.key)) ? null : each.key
  destination_ipv6_cidr_block = can(regex(":", each.key)) ? each.key : null

  gateway_id                  = lookup(each.value, "gateway_id", null)
  egress_only_gateway_id      = lookup(each.value, "egress_only_gateway_id", null)
  nat_gateway_id              = lookup(each.value, "nat_gateway_id", null)
  network_interface_id        = lookup(each.value, "network_interface_id", null)
  vpc_peering_connection_id   = lookup(each.value, "vpc_peering_connection_id", null)
  transit_gateway_id          = lookup(each.value, "transit_gateway_id", null)
  local_gateway_id            = lookup(each.value, "local_gateway_id", null)
  carrier_gateway_id          = lookup(each.value, "carrier_gateway_id", null)
}

resource "aws_route_table_association" "this" {
  count          = length(var.subnet_ids)
  subnet_id      = var.subnet_ids[count.index]
  route_table_id = aws_route_table.this.id
}

