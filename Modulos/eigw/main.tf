resource "aws_egress_only_internet_gateway" "this" {
  vpc_id = var.vpc_id

  tags = merge({
    Name = "${var.name_prefix}-EIGW"
  }, var.tags)
}
