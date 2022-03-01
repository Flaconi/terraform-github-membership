variable "token" {
  description = "Github token"
  type        = string
}

variable "org" {
  description = "Github organization"
  type        = string
}

provider "github" {
  token = var.token
  owner = var.org
}

module "members" {
  source = "../../"

  admins = [
    {
      name   = "Admin"
      github = "test-admin"
    }
  ]

  members = [
    {
      name   = "Some User"
      github = "test-user-1"
    },
    {
      name   = "Another User"
      github = "test-user-2"
    },
  ]
}

output "memberships" {
  description = "A map of members and admins keyed by username."
  value       = module.members.memberships
}
