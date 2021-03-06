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

# Note: You have to be an Owner of organization to destroy this resource
resource "github_team" "developers" {
  name        = "Repository Developers"
  description = "Developers for this repository"
  privacy     = "closed"

  create_default_maintainer = false
}

module "members" {
  source = "../../"

  members = [
    {
      name   = "Some User"
      github = "test-user-1"
      teams  = { repository-developers = "maintainer" }
    },
    {
      name   = "Another User"
      github = "test-user-2"
      teams  = { repository-developers = "member" }
    },
  ]

  depends_on = [github_team.developers]
}

output "memberships" {
  description = "A map of members and admins keyed by username."
  value       = module.members.memberships
}

output "teams" {
  description = "A map of teams with members and corresponding roles."
  value       = module.members.teams
}
