data "github_team" "this" {
  for_each = local.teams_without_ids
  slug     = each.key
}
