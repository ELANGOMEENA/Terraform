resource "aws_instance" "web" {
    ami=var.ami_id
    instance_type =var.instance_type
    count = 1
    availability_zone = "ap-south-1a"
    monitoring = var.monitoring
    tags={
        Name="Terraform Mumbai Server"
        Env="appEnv"
    }
  
}