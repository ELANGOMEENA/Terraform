
resource "aws_iam_user" "db" {
    name=var.user_names[count.index]
    count=length(var.user_names)
}


