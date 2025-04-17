variable "vpc_id" {
  description = "ID da VPC onde o Egress-Only IGW será criado"
  type        = string
}

variable "name_prefix" {
  description = "Prefixo do nome para tagging"
  type        = string
}

variable "tags" {
  description = "Tags adicionais"
  type        = map(string)
  default     = {}
}
