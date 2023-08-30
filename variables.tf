variable "region" {
  description = "Região onde será criado os recursos da aws"
  type        = string
  default     = "us-east-1"
}

variable "tag" {
  description = "Tag individual dos recursos criados na aws"
  type        = string
  default     = "terraform"
}

# variable "aws_pub_key" {
#   description = "Public key para VM EC2 na AWS"
#   type        = string
# }