variable "name" {
  description = "Nome da VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block da VPC IPv4"
  type        = string
  default     = "192.168.18.0/23"
}

variable "enable_dns_support" {
  description = "Habilita suporte a DNS"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Habilita hostnames DNS"
  type        = bool
  default     = true
}

variable "enable_ipv6" {
  description = "Ativa IPv6 com bloco gerado automaticamente"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags adicionais para aplicar na VPC"
  type        = map(string)
  default     = {}
}
