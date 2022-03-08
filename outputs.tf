output "aws_policy_id" {
  value       = aws_iam_policy.main.id
  description = "The ARN assigned by AWS to this policy."
}

output "policy_arn" {
  value       = aws_iam_policy.main.arn
  description = "The ARN assigned by AWS to this policy."
}

output "policy_description" {
  value       = aws_iam_policy.main.description
  description = "The description of the policy."
}

output "policy_name" {
  value       = aws_iam_policy.main.name
  description = "The name of the policy."
}

output "policy_path" {
  value       = aws_iam_policy.main.path
  description = "The path of the policy in IAM."
}

output "policy_document" {
  value       = aws_iam_policy.main.policy
  description = "The policy document."
}

output "policy_id" {
  value       = aws_iam_policy.main.policy_id
  description = "The policy's ID."
}

output "policy_tags_all" {
  value       = aws_iam_policy.main.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider `default_tags`"
}

output "policy_attachment_name" {
  value       = aws_iam_policy_attachment.main.name
  description = "The name of the attachment."
}
