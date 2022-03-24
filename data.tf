data "github_team" "this" {
  for_each = local.teams
  slug     = each.key
}
