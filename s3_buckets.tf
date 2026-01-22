resource "aws_s3_bucket" "db" {
    bucket = each.value
    for_each = toset(var.s3_bucket)
  
}