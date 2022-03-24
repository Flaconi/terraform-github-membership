variable "admins" {
  description = "List of users with admin role"
  type = list(object({
    name   = string
    github = string
    teams  = optional(map(string))
  }))
  default = []

  validation {
    condition = length(var.admins) > 0 ? alltrue(flatten([for m in var.admins :
      (m["teams"] != null ? [for r in values(m["teams"]) : (r == "maintainer" || r == "member")] : [true])
    ])) : true
    error_message = "Only team roles `maintainer` or `member` are accepted."
  }
}

variable "members" {
  description = "List of users with member role"
  type = list(object({
    name   = string
    github = string
    teams  = optional(map(string))
  }))
  default = []

  validation {
    condition = length(var.members) > 0 ? alltrue(flatten([for m in var.members :
      (m["teams"] != null ? [for r in values(m["teams"]) : (r == "maintainer" || r == "member")] : [true])
    ])) : true
    error_message = "Only team roles `maintainer` or `member` are accepted."
  }
}
