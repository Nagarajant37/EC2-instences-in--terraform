provider "aws" {
    region = "us-east-1"
    access_key = "Axxxxxxxxxxxxxxxxx"
    secret_key = "e6gxxxxxxxxxxxxxxxxxxxxxxxxxx"
  
}
# Creating VPC,name, CIDR and Tags
resource "aws_vpc" "tom" {
  cidr_block           = "172.31.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "tom"
  }
}

# Creating Public Subnets in VPC
resource "aws_subnet" "tom-public-1" {
  vpc_id                  = aws_vpc.tom.id
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "tom-public-1"
  }
}

resource "aws_subnet" "tom-public-2" {
  vpc_id                  = aws_vpc.tom.id
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "tom-public-2"
  }
}

# Creating Internet Gateway in AWS VPC
resource "aws_internet_gateway" "tom-gw" {
  vpc_id = aws_vpc.tom.id

  tags = {
    Name = "tom"
  }
}

# Creating Route Tables for Internet gateway
resource "aws_route_table" "tom-public" {
  vpc_id = aws_vpc.tom.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tom-gw.id
  }

  tags = {
    Name = "tom-public-1"
  }
}

# Creating Route Associations public subnets
resource "aws_route_table_association" "tom-public-1-a" {
  subnet_id      = aws_subnet.tom-public-1.id
  route_table_id = aws_route_table.tom-public.id
}

resource "aws_route_table_association" "tom-public-2-a" {
  subnet_id      = aws_subnet.tom-public-2.id
  route_table_id = aws_route_table.tom-public.id
}



