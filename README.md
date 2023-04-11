[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-aws-iam-policy/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-aws-iam-policy.svg)](https://github.com/boldlink/terraform-aws-iam-policy/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform aws IAM Policy module

## Description

This module creates IAM policies and policy attachment resources.

Examples available [`here`](github.com/boldlink/terraform-aws-iam-policy/tree/main/examples)

## Usage
*NOTE*: These examples use the latest version of this module

```console
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
```
## Documentation

[AWS Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)

[Terraform module documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.15.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.62.0 |

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
| <a name="input_groups"></a> [groups](#input\_groups) | (Optional) - The group(s) the policy should be applied to | `list(string)` | `[]` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | (Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with `name`. | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | (Optional, default `/`) Path in which to create the policy. | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | (Required) The policy document. This is a JSON formatted string. | `string` | n/a | yes |
| <a name="input_policy_attachment_name"></a> [policy\_attachment\_name](#input\_policy\_attachment\_name) | (Optional) - The name of the attachment. Required when users, roles or groups are provided. | `string` | `null` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | (Optional, Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | (Optional) - The role(s) the policy should be applied to | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Map of resource tags for the IAM Policy. | `map(string)` | `{}` | no |
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

## Third party software
This repository uses third party software:
* [pre-commit](https://pre-commit.com/) - Used to help ensure code and documentation consistency
  * Install with `brew install pre-commit`
  * Manually use with `pre-commit run`
* [terraform 0.14.11](https://releases.hashicorp.com/terraform/0.14.11/) For backwards compatibility we are using version 0.14.11 for testing making this the min version tested and without issues with terraform-docs.
* [terraform-docs](https://github.com/segmentio/terraform-docs) - Used to generate the [Inputs](#Inputs) and [Outputs](#Outputs) sections
  * Install with `brew install terraform-docs`
  * Manually use via pre-commit
* [tflint](https://github.com/terraform-linters/tflint) - Used to lint the Terraform code
  * Install with `brew install tflint`
  * Manually use via pre-commit

### Makefile
The makefile contained in this repo is optimized for linux paths and the main purpose is to execute testing for now.
* Create all tests:
`$ make tests`
* Clean all tests:
`$ make clean`

#### BOLDLink-SIG 2022
