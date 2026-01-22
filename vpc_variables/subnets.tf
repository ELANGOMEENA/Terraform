resource "aws_subnet" "public"{
  cidr_block = var.spublic
  vpc_id = aws_vpc.prod.id
  availability_zone = var.availability_zone
  tags=var.sp_tags
}
resource "aws_default_route_table" "prod" {
  default_route_table_id = aws_vpc.prod.default_route_table_id
  tags = var.r_tags
}

resource "aws_subnet" "private"{
  cidr_block = var.sprivate
  vpc_id = aws_vpc.prod.id
  availability_zone = var.availability_zone1
  tags=var.sprivate_tags

}
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.prod.id
  
  route {
    cidr_block = var.route
    gateway_id = aws_internet_gateway.igw.id
  }
   tags=var.ro_tags
}
resource "aws_route_table_association" "public_assoc" {
  subnet_id  = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_assoc" {
  subnet_id  = aws_subnet.private.id
  route_table_id = aws_default_route_table.prod.id
}
