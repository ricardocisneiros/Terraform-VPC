resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id

  tags = merge({
    Name = "${var.name_prefix}-IGW"
  }, var.tags)
}
