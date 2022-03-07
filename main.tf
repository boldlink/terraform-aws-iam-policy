resource "aws_iam_policy" "main" {
  name        = var.policy_name
  path        = var.path
  description = var.description
  policy      = var.policy
  tags = {
    name        = var.policy_name
    environment = var.environment
  }
}

resource "aws_iam_policy_attachment" "main" {
  name       = var.policy_attachment_name
  users      = var.users
  roles      = var.roles
  groups     = var.groups
  policy_arn = aws_iam_policy.main.arn
}
