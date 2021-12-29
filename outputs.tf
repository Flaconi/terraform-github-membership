output "memberships" {
  description = "A map of members and admins keyed by username."
  value = {
    for user, member in github_membership.membership : user => {
      role = member.role
      name = local.names[user]
    }
  }
}
