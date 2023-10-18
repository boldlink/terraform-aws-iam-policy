resource "aws_iam_policy" "main" {
  name        = var.policy_name
  name_prefix = var.name_prefix
  path        = var.path
  description = var.description
  policy      = var.policy
  tags = merge({
    Name = var.policy_name
    },
  var.tags)
}

resource "aws_iam_policy_attachment" "main" {
  count      = local.create_policy_attachment ? 1 : 0
  name       = var.policy_attachment_name
  users      = var.users
  roles      = var.roles
  groups     = var.groups
  policy_arn = aws_iam_policy.main.arn
}
