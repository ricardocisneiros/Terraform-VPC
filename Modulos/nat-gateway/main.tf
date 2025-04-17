#Criação do Elastic IP.
resource "aws_eip" "eip_nat_gateway" {
  domain    = "vpc"

  tags     = merge(var.tags, 
            tomap({
              "Name" = "Elastic-IP-${var.nat_gw_name}"
            }))
}

#Criação do NAT Gateway.
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.eip_nat_gateway.id
  subnet_id     = var.subnet_id
  
  tags          = merge(var.tags, 
                  tomap({
                    "Name" = "Nat-Gateway-${var.nat_gw_name}"
                  }))

}
