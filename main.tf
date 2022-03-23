resource "github_membership" "membership" {
  for_each = local.memberships

  username = each.key
  role     = each.value
}

module "teams" {
  source = "./modules/team"

  for_each = local.teams_members

  team_id = data.github_team.this[each.key].id
  members = each.value
}
