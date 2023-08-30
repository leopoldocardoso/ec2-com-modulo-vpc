terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Owner     = "Leopoldo P. Cardoso"
      ManagedBy = "Terraform"
      Objective = "Estudos Terraform"
    }
  }
}

module "network" {
  source      = "./modulo-vpc"
 
}