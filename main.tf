locals {
  admins  = { for user in var.admins : lower(user.github) => "admin" }
  members = { for user in var.members : lower(user.github) => "member" }
  names   = { for user in concat(var.admins, var.members) : lower(user.github) => user.name }

  memberships = merge(local.admins, local.members)
}

resource "github_membership" "membership" {
  for_each = local.memberships

  username = each.key
  role     = each.value
}
