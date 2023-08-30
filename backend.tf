terraform {
  backend "s3" {
    bucket = "iacterraformtfstate"
    key    = "vm-ec2/terraform.tfstate"
    region = "us-east-1"
  }
}