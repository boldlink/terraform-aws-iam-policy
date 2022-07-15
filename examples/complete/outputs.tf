output "complete" {
  description = "Complete example output"
  value = [module.complete_policy,
    module.iam_user
  ]
}
