#Output com o ID do Elastic IP
output "elastic_ip_id" {
    value = aws_eip.eip_nat_gateway.id
}

#Output com o ID do NAT Gateway
output "nat_gateway_id" {
    value = aws_nat_gateway.nat_gw.id
}