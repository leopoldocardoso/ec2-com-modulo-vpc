resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_vpc
    tags = {
      Name = "vpc-${var.tag}"
    }
}
resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.cidr_subnet
     tags = {
        Name = "subnet-${var.tag}"
    }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "igw-${var.tag}"
  }
}

resource "aws_route_table" "rtable" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "route-table-${var.tag}"
  }
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
 }
  }

resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.rtable.id
}
