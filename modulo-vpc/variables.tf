variable "cidr_vpc" {
    description = "Cidr Block para VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "cidr_subnet" {
    description = "Cidr Block para Subnet"
    type = string
    default = "10.0.1.0/24"
}

variable "region" {
  description = "Região onde será criado os recursos da aws"
  type = string
  default = "us-east-1"
}

variable "tag" {
  description = "Tag individual dos recursos criados na aws"
  type = string
  default = "terraform"
}