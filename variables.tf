variable "admins" {
  description = "List of users with admin role"
  type = list(object({
    name   = string
    github = string
  }))
  default = []
}

variable "members" {
  description = "List of users with member role"
  type = list(object({
    name   = string
    github = string
  }))
  default = []
}
