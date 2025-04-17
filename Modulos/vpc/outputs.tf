output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.this.id
}

output "vpc_ipv6_cidr_block" {
  description = "Bloco IPv6 alocado (caso ativado)"
  value       = aws_vpc.this.ipv6_cidr_block
}
