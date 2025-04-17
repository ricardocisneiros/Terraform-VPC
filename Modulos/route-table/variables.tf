variable "vpc_id" {
  type        = string
  description = "ID da VPC onde a route table será criada."
}

variable "name_prefix" {
  type        = string
  description = "Prefixo para o nome da route table."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags adicionais para a route table."
}

variable "subnet_ids" {
  type        = list(string)
  default     = []
  description = "Lista de subnets para associar a route table."
}

variable "routes" {
  type = map(object({
    gateway_id                = optional(string)
    egress_only_gateway_id    = optional(string)
    nat_gateway_id            = optional(string)
    network_interface_id      = optional(string)
    vpc_peering_connection_id = optional(string)
    transit_gateway_id        = optional(string)
    local_gateway_id          = optional(string)
    carrier_gateway_id        = optional(string)
  }))
  default     = {}
  description = "Mapa de rotas personalizadas com seus respectivos destinos (ENI, NAT, TGW, etc)."
}
