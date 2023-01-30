variable "admins" {
  description = "List of users with admin role"
  type = list(object({
    name   = string
    github = string
    teams  = optional(map(string), {})
  }))
  default = []

  validation {
    condition = length(var.admins) > 0 ? alltrue(flatten([for m in var.admins :
      [for r in values(m["teams"]) : (r == "maintainer" || r == "member")]
    ])) : true
    error_message = "Only team roles `maintainer` or `member` are accepted."
  }
}

variable "members" {
  description = "List of users with member role"
  type = list(object({
    name   = string
    github = string
    teams  = optional(map(string), {})
  }))
  default = []

  validation {
    condition = length(var.members) > 0 ? alltrue(flatten([for m in var.members :
      [for r in values(m["teams"]) : (r == "maintainer" || r == "member")]
    ])) : true
    error_message = "Only team roles `maintainer` or `member` are accepted."
  }
}

variable "team_ids" {
  description = "A dictionary for team IDs to avoid additional calls to GitHub API"
  type        = map(string)
  default     = {}
}
