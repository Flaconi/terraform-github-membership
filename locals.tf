locals {
  admins  = { for user in var.admins : lower(user.github) => "admin" }
  members = { for user in var.members : lower(user.github) => "member" }
  names   = { for user in concat(var.admins, var.members) : lower(user.github) => user.name }

  all_users   = concat(var.admins, var.members)
  memberships = merge(local.admins, local.members)

  # List all distinct team names
  teams = toset(distinct(flatten([for user in local.all_users :
  keys(user["teams"]) if user["teams"] != null])))

  # Teams without IDs
  teams_without_ids = toset([for team in local.teams : team if lookup(var.team_ids, team, null) == null])

  # List of all team memberships
  teams_membership = flatten([for user in local.all_users :
    [for team, role in user["teams"] : {
      user = user["github"]
      team = team
      role = role
  }] if user["teams"] != null])

  # Iterate over team names to create list of members for each team
  teams_members = { for team in local.teams :
    team => [for member in local.teams_membership : {
      name = member["user"]
      role = member["role"]
    } if member["team"] == team]
  }
}
