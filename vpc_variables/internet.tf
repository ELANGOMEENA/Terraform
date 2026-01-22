resource "aws_internet_gateway" "igw" {
   vpc_id=aws_vpc.prod.id
   tags=var.i_tags
}