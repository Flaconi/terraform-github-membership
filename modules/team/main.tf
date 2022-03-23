# --------------------------------------------------------------------------------------------------
# Resources
# --------------------------------------------------------------------------------------------------
resource "github_team_membership" "this" {
  for_each = { for member in var.members : member["user"] => member["role"] }

  team_id  = var.team_id
  username = each.key
  role     = each.value
}
