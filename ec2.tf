resource "aws_instance" "app" {
    ami="ami-0ced6a024bb18ff2e"
    instance_type =var.instance_type
    availability_zone = "ap-south-1a"
    provider = aws.Mum
    tags=var.ec2_tags
  
}
#resource "aws_instance" "prod" {
    #ami="ami-07ff62358b87c7116"
    #instance_type = "t3.micro"
    #availability_zone = "us-east-1a"
    #provider = aws.NV
    #tags={
        #Name="Terraform NV  Server"
        #Env="prodEnv"
    #}
  
#}