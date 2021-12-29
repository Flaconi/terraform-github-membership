variable "create" {
  description = "Whether to create Github membership for users"
  type        = bool
  default     = true
}

variable "github_token" {
  description = "Github token to use when adding membership"
  type        = string
  default     = ""
}

variable "github_owner" {
  description = "Github organization name"
  type        = string
  default     = ""
}

variable "admins" {
  description = "List of users with admin role"
  type = list(object({
    name   = string
    github = string
    note   = string
  }))
  default = []
}

variable "members" {
  description = "List of users with member role"
  type = list(object({
    name   = string
    github = string
    note   = string
  }))
  default = []
}
