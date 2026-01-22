resource "aws_vpc" "prod"{
    cidr_block = var.vpc
    instance_tenancy = "default"
    tags=var.vpc_tags
}