#List of required resource create for network
#1. VPC
#2. Subnet
#3. Security


resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

    tags = {
        Name="myvpc"
    }
}

resource "aws_subnet" "public_sb" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name ="public_sb"
  }
}

resource "aws_security_group" "public_sg" {
  vpc_id = aws_vpc.myvpc.id
  name = "public_sg"
  description = "Public Security"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
}
   
