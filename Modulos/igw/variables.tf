variable "vpc_id" {
  description = "ID da VPC à qual o Internet Gateway será anexado"
  type        = string
}

variable "name_prefix" {
  description = "Prefixo para o nome do Internet Gateway"
  type        = string
}

variable "tags" {
  description = "Tags adicionais a serem aplicadas ao IGW"
  type        = map(string)
  default     = {}
}
