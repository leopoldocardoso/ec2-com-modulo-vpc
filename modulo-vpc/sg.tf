resource "aws_security_group" "security-group" {
    name = "sgterraform"
    description = "Permitir trafego ssh"
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = "sg-terraform"
    }
    ingress {
        description = "SSH from VPC"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["177.64.205.70/32"]
    }
     egress {
        description = "SSH from VPC"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}