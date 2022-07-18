module "iam_user" {
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
  description            = "IAM user policy to deny EC2 creation and deletion of tags"
  policy                 = local.policy
  tags = {
    environment        = "examples"
    "user::CostCenter" = "terraform-registry"
  }
}
