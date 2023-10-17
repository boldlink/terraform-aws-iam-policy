[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-aws-iam-policy/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-aws-iam-policy.svg)](https://github.com/boldlink/terraform-aws-iam-policy/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/module-examples-tests.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/auto-merge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-policy/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-policy/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform  module example of complete and most common configuration


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.15.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.21.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_complete_policy"></a> [complete\_policy](#module\_complete\_policy) | ./../../ | n/a |
| <a name="module_iam_group"></a> [iam\_group](#module\_iam\_group) | boldlink/iam-group/aws | 1.0.5 |
| <a name="module_iam_user"></a> [iam\_user](#module\_iam\_user) | boldlink/iam-user/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.example_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the resources | `map(string)` | <pre>{<br>  "Department": "DevOps",<br>  "Environment": "example",<br>  "InstanceScheduler": true,<br>  "LayerId": "cExample",<br>  "LayerName": "cExample",<br>  "Owner": "Boldlink",<br>  "Project": "Examples",<br>  "user::CostCenter": "terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_complete"></a> [complete](#output\_complete) | Complete example output |
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

#### BOLDLink-SIG 2023
