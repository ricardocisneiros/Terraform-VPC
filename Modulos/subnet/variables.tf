variable "vpc_id" {
  description = "ID da VPC existente"
  type        = string
}

variable "name_prefix" {
  description = "Prefixo do nome das subnets"
  type        = string
}

variable "public_subnet_count" {
  description = "Número de subnets públicas a serem criadas"
  type        = number
  default     = 1
}

variable "private_subnet_count" {
  description = "Número de subnets privadas a serem criadas"
  type        = number
  default     = 1
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks das subnets públicas"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks das subnets privadas"
  type        = list(string)
}

variable "public_availability_zones" {
  description = "Zonas de disponibilidade para as subnets públicas"
  type        = list(string)
}

variable "private_availability_zones" {
  description = "Zonas de disponibilidade para as subnets privadas"
  type        = list(string)
}

variable "assign_ipv6_address_on_creation" {
  description = "Variavel para saber se deve atribuir o cdir ipv6 automaticamente a um novo recurso."
  default     = false
  type        = bool
}


variable "ipv6_cidr_block_pub" {
  description = "É um Map (mapa) de zonas de disponibilidade (AZ) para blocos das subnets, nas quais os nós das subnets serão implantados."
  default     = {}
  type        = map
}

variable "ipv6_cidr_block_priv" {
  description = "É um Map (mapa) de zonas de disponibilidade (AZ) para blocos das subnets, nas quais os nós das subnets serão implantados."
  default     = {}
  type        = map
}