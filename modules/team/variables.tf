variable "team_id" {
  description = "GitHub team ID"
  type        = string
}

variable "members" {
  description = "GitHub team members with roles"
  type = list(object({
    name = string
    role = string # GitHub team members role (member or maintainer)
  }))
  default = []
}
