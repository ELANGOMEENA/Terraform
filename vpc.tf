resource "aws_vpc" "prod"{
    cidr_block = "192.168.0.0/16"
    instance_tenancy = "default"
    tags={
        Name="JavaHome-VPC"
        loc="Bangalore"
        Env="prod"
        Project="JHC"
    }
}