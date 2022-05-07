
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)

# AWS IAM Policy Terraform module

## Description
This module creates an AWS IAM Policy defining the permissions that can be attached to IAM group, users or roles.

Example available [here](https://github.com/boldlink/terraform-aws-iam-policy/tree/main/examples)

## Documentation

[AWS Identity and Access Management Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)

[Terraform provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional, Forces new resource) Description of the IAM policy. | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment where this resource is created | `string` | `null` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | (Optional) - The group(s) the policy should be applied to | `list(string)` | `[]` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | (Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with `name`. | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | (Optional, default `/`) Path in which to create the policy. | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | (Required) The policy document. This is a JSON formatted string. | `string` | n/a | yes |
| <a name="input_policy_attachment_name"></a> [policy\_attachment\_name](#input\_policy\_attachment\_name) | (Required) - The name of the attachment. This cannot be an empty string. | `string` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | (Optional, Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | (Optional) - The role(s) the policy should be applied to | `list(string)` | `[]` | no |
| <a name="input_users"></a> [users](#input\_users) | (Optional) - The user(s) the policy should be applied to | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_policy_id"></a> [aws\_policy\_id](#output\_aws\_policy\_id) | The ARN assigned by AWS to this policy. |
| <a name="output_policy_arn"></a> [policy\_arn](#output\_policy\_arn) | The ARN assigned by AWS to this policy. |
| <a name="output_policy_attachment_name"></a> [policy\_attachment\_name](#output\_policy\_attachment\_name) | The name of the attachment. |
| <a name="output_policy_description"></a> [policy\_description](#output\_policy\_description) | The description of the policy. |
| <a name="output_policy_document"></a> [policy\_document](#output\_policy\_document) | The policy document. |
| <a name="output_policy_id"></a> [policy\_id](#output\_policy\_id) | The policy's ID. |
| <a name="output_policy_name"></a> [policy\_name](#output\_policy\_name) | The name of the policy. |
| <a name="output_policy_path"></a> [policy\_path](#output\_policy\_path) | The path of the policy in IAM. |
| <a name="output_policy_tags_all"></a> [policy\_tags\_all](#output\_policy\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider `default_tags` |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
