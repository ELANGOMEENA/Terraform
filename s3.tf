resource "aws_s3_bucket" "s3" {
    bucket = "first-s3-bucket-terraform-jan-20-26"
    tags={
        Env="s3-bucket"
    }
  
}