resource "aws_ebs_volume" "gp3" {
    availability_zone = "ap-south-1b"
    size=200
    type="gp3"
    encrypted=var.ebs_encryption 
}