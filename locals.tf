locals {
  create_policy_attachment = (var.users != null || var.roles != null || var.groups != null) ? true : false
}
