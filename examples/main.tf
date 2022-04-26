provider "aws" {
  region = "eu-west-1"
}

locals {
  name                   = "boldlink-test-user"
  environment            = "development"
  policy_name            = "development-policy"
  iam_user_name          = "test-user"
  policy_attachment_name = "boldlink-test-policy-attach"
}

module "iam_user" {
  source        = "boldlink/iam-user/aws"
  iam_user_name = local.iam_user_name
  name          = local.name
  force_destroy = true
  environment   = local.environment
  policy_name   = local.policy_name
  user_policy = jsonencode({
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

module "boldlink_ec2_policy" {
  source      = "./.."
  policy_name = "test-policy"
  #name_prefix = "boldlink-test"  #conflicts with policy_name
  description            = "IAM user policy to deny EC2 creation and deletion of tags"
  policy                 = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
        {
      "Effect": "Deny",
      "Action": [
        "ec2:CreateTags",
        "ec2:DeleteTags"
      ],
      "Resource": "*"
    }
  ]
}
EOF
  environment            = local.environment
  policy_attachment_name = local.policy_attachment_name
  users                  = [module.iam_user.user_name]
}
