locals {
  name        = "example.user"
  policy_name = "complete-policy-example"

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

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny",
        Action = [
          "ec2:CreateTags",
          "ec2:DeleteTags"
        ],
        Resource = "*"
      }
    ]
  })
}
