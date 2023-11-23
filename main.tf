resource "aws_iam_user" "Admin-user" {
  name = "mgm"
  tags = {
    "description" = "Technical Team Lead"
  }
}
resource "aws_iam_policy" "adminuser" {
  name   = "AdminUsers"
  policy = file("admin-policy.json")
}
resource "aws_iam_user_policy_attachment" "mgm-admin-access" {
  user       = aws_iam_user.Admin-user.name
  policy_arn = aws_iam_policy.adminuser.arn
}
