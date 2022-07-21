variable "description" {
  type        = string
  description = "(Optional, Forces new resource) Description of the IAM policy."
  default     = null
}

variable "policy_name" {
  type        = string
  description = "(Optional, Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = null
}

variable "name_prefix" {
  type        = string
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with `name`."
  default     = null
}

variable "path" {
  type        = string
  description = "(Optional, default `/`) Path in which to create the policy."
  default     = null
}

variable "policy_arn" {
  type        = string
  description = "(Optional) ARN of an external policy not created by this module"
  default     = null
}

variable "policy" {
  type        = string
  description = "(Required) The policy document. This is a JSON formatted string."
}

variable "policy_attachment_name" {
  type        = string
  description = "(Optional) - The name of the attachment. Required when users, roles or groups are provided."
  default     = null
}

variable "users" {
  type        = list(string)
  description = "(Optional) - The user(s) the policy should be applied to"
  default     = []
}

variable "roles" {
  type        = list(string)
  description = "(Optional) - The role(s) the policy should be applied to"
  default     = []
}

variable "groups" {
  type        = list(string)
  description = "(Optional) - The group(s) the policy should be applied to"
  default     = []
}

#tags
variable "tags" {
  type        = map(string)
  description = "(Optional) Map of resource tags for the IAM Policy."
  default     = {}
}
