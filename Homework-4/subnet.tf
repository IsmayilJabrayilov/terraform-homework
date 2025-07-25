resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[0].cidr
availability_zone = var.subnet[0].az
map_public_ip_on_launch = var.subnet[0].get_public_ip
  tags = {
    name = var.subnet[0].name
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[1].cidr
availability_zone = var.subnet[1].az
map_public_ip_on_launch = var.subnet[1].get_public_ip
  tags = {
    name = var.subnet[1].name
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[2].cidr
availability_zone = var.subnet[2].az
map_public_ip_on_launch = var.subnet[2].get_public_ip
  tags = {
    name = var.subnet[2].name
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[3].cidr
availability_zone = var.subnet[3].az
map_public_ip_on_launch = var.subnet[3].get_public_ip
  tags = {
    name = var.subnet[3].name
  }
}

