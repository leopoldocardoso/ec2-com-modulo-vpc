resource "aws_key_pair" "key" {
  key_name   = "key-aws"
  public_key = var.aws_pub_key
}


resource "aws_instance" "vm-ec2" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true
  tags = {
    Name = "ec2-${var.tag}"
  }
}