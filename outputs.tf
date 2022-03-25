output "memberships" {
  description = "A map of members and admins keyed by username."
  value = {
    for user, member in github_membership.membership : user => {
      role = member.role
      name = local.names[user]
    }
  }
}

output "teams" {
  description = "A map of teams with members and corresponding roles."
  value = {
    for name, team in module.teams : name => {
      for user, member in team.members : user => member.role
    }
  }
}
