output "egress_only_internet_gateway_id" {
  description = "ID do Egress-Only Internet Gateway"
  value       = aws_egress_only_internet_gateway.this.id
}
