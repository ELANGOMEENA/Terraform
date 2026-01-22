variable "ami_id" {
    description = "storing ami id"
    type=string
    default = "ami-0ced6a024bb18ff2e" 
}

variable "instance_type" {
    description = "storing instance type"
    type=string
    default = "t3.micro" 
}
variable "instance_count" {
    description = "value"
    type=number
    default = 5
}
variable "ebs_encryption" {
    description = "value"
    type=bool
    default = true
}
variable "monitoring" {
    description = "value"
    type=bool
    default = true
}

variable "user_names"{
    description = "creating list of Iam users"
    type=list(string)
    default = [ "Arun","Banu","Charu","Deva" ]
}

variable "s3_bucket" {
    type = set(string)
    default = [ "my-aws-s3-bucket-first-jan22-2026","my-aws-s3-bucket-second-jan22-2026",
    "my-aws-s3-bucket-third-jan22-2026" ] 
}

variable "instance_types" {
    type = map(string)
    default = {
      production= "t3.micro"
      staging="t3.small"
      development="c7i-flex.large"
    }
}
variable "ec2_tags" {
    type = map(string)
    default = {
      Name="Java_Home_Server"
      Project="Swiggy"
      Env="Production"
      Loc="Singapore"
    }
}