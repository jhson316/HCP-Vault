resource "aws_vpc" "VPC_test" {
  cidr_block = "193.17.0.0/16"

  tags = {
    Name = "VPC Test"
  }
}

resource "aws_subnet" "Pub_sub1" {
  vpc_id     = aws_vpc.VPC_test.id
  cidr_block = "193.17.0.0/24"
  tags = {
    "Name" = "VPC Test Pub_sub1"
  }
}

resource "aws_subnet" "Pub_sub2" {
  vpc_id     = aws_vpc.VPC_test.id
  cidr_block = "193.17.1.0/24"
  tags = {
    "Name" = "VPC Test Pub_sub2"
  }
}

resource "aws_subnet" "Pri_sub1" {
  vpc_id     = aws_vpc.VPC_test.id
  cidr_block = "193.17.10.0/24"
  tags = {
    "Name" = "VPC Test Pri_sub1"
  }
}

resource "aws_subnet" "Pri_sub2" {
  vpc_id     = aws_vpc.VPC_test.id
  cidr_block = "193.17.11.0/24"
  tags = {
    "Name" = "VPC Test Pri_sub2"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.VPC_test.id

  tags = {
    Name = "Internet Gateway"
  }
}
