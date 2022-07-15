module "minimum" {
  source      = "./../../"
  policy_name = "minimum-policy-example"
  description = "IAM policy to grant EC2 describe permissions"
  policy = jsonencode({
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
  tags = {
    environment        = "examples"
    "user::CostCenter" = "terraform-registry"
  }
}
