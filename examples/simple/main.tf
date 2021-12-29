module "members" {
  source = "../../"

  owner = "test-organization"

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
