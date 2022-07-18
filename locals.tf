locals {
  create_policy_attachment = (length(var.users) > 0 || length(var.roles) > 0 || length(var.groups) > 0) ? true : false
}
