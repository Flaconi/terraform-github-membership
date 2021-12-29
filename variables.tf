variable "token" {
  description = "Github token to use when adding membership"
  type        = string
  default     = ""
}

variable "owner" {
  description = "Github organization name"
  type        = string
  default     = ""
}

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
