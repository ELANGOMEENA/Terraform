resource "aws_subnet" "public"{
  cidr_block = "192.168.0.0/24"
  vpc_id = aws_vpc.prod.id
  availability_zone = "ap-south-1a"
  
  tags={
    Name="Public-Subnet"
  }
}
resource "aws_default_route_table" "prod" {
  default_route_table_id = aws_vpc.prod.default_route_table_id

  tags = {
    Name = "main-route-table"
  }
}

resource "aws_subnet" "private"{
  cidr_block = "192.168.1.0/24"
  vpc_id = aws_vpc.prod.id
  availability_zone = "ap-south-1b"
  tags={
    Name="Private-Subnet"
  }

}
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_default_route_table.prod.id
}
