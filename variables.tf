variable "admins" {
  description = "List of users with admin role"
  type = list(object({
    name   = string
    github = string
    teams = optional(list(object({
      team = string
      role = optional(string)
    })))
  }))
  default = []
}

variable "members" {
  description = "List of users with member role"
  type = list(object({
    name   = string
    github = string
    teams = optional(list(object({
      team = string
      role = optional(string)
    })))
  }))
  default = []
}
