locals {
  admins  = toset([for user in var.admins : user.github])
  members = toset([for user in var.members : user.github])
}

resource "github_membership" "admins" {
  for_each = local.admins
  username = each.value
  role     = "admin"
}

resource "github_membership" "members" {
  for_each = local.members
  username = each.value
  role     = "member"
}
