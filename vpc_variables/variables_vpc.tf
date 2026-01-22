variable "vpc" {
    description = "storing vpc"
    type=string
    default = "192.168.0.0/16" 
}

variable "vpc_tags" {
    type=map(string)
    default ={
        Name="JavaHome-VPC"
        loc="Bangalore"
        Env="prod"
        Project="JHC"
    }
}
variable "spublic" {
    type=string
    default = "192.168.0.0/24" 
}

variable "availability_zone" {
    type=string
    default ="ap-south-1a"
}

variable "availability_zone1" {
    type=string
    default ="ap-south-1b"
}
variable "sp_tags" {
    type=map(string)
    default ={
        Name="Public-Subnet"
    }
}
variable "r_tags" {
    type=map(string)
    default ={
        Name="main-route-table"
    }
}

variable "sprivate" {
    type=string
    default ="192.168.1.0/24"
}
variable "sprivate_tags" {
    type=map(string)
    default ={
        Name="Private-Subnet"
    }
}
variable "route" {
    type=string
    default ="0.0.0.0/0"
}
variable "ro_tags" {
    type=map(string)
    default ={
        Name="public-rt"
    }
}

variable "i_tags" {
    type=map(string)
    default ={
        Name="JHC-IGW"
    }
}