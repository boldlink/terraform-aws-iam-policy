module "iam_group" {
  source          = "boldlink/iam-group/aws"
  version         = "1.0.5"
  group_name      = "${local.name}-group"
  membership_name = local.name
  policy_name     = local.name
  group_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_role" "example_role" {
  name = "${local.name}-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = var.tags
}

module "iam_user" {
  #checkov:skip=CKV_TF_1:Ensure Terraform module sources use a commit hash
  source        = "boldlink/iam-user/aws"
  name          = local.name
  force_destroy = true
  user_policy   = local.user_policy
}

module "complete_policy" {
  source                 = "./../../"
  policy_name            = local.policy_name
  policy_attachment_name = "${local.policy_name}-attachment"
  users                  = [module.iam_user.user_name]
  roles                  = [aws_iam_role.example_role.name]
  groups                 = [module.iam_group.iam_group_name]
  description            = "IAM user policy to deny EC2 creation and deletion of tags"
  policy                 = local.policy
  tags                   = var.tags
}
