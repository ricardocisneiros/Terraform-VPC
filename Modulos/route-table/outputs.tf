output "route_table_id" {
  description = "ID da route table criada"
  value       = aws_route_table.this.id
}

output "route_table_associations" {
  description = "Associações feitas entre route table e subnets"
  value       = aws_route_table_association.this[*].id
}
