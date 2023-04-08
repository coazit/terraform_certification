variable "virginia_cidr" {
  description = "CIDR Virginia"
  type        = map(string)
}

# variable "public_subnet" {
#   description = "CIDR public subnet"
#   type        = string
# }

# variable "private_subnet" {
#   description = "CIDR private subnet"
#   type        = string
# }

variable "subnets" {
  description = "Lista de subnets"
  type        = list(string)
}

variable "tags" {
  description = "Tags del proyecto"
  type        = map(string)
}

variable "sg_ingress_cidr" {
  description = "CIDR for Ingress Traffic"
  type        = string
}

variable "ec2-specs" {
  description = "Parametros de la Instancia"
  type        = map(string)
}