locals {
  admins  = { for user in var.admins : lower(user.github) => "admin" }
  members = { for user in var.members : lower(user.github) => "member" }
  names   = { for user in concat(var.admins, var.members) : lower(user.github) => user.name }

  memberships = merge(local.admins, local.members)

  # List all distinct team names
  teams = distinct(flatten([for user in merge(var.admins, var.members) :
  [for team in user["teams"] : team["team"]] if user["teams"] != null]))

  # List of all team memberships
  teams_membership = flatten([for user in merge(var.admins, var.members) :
    [for team in user["teams"] : {
      user = user["github"]
      team = team["team"]
      role = team["role"] != null ? team["role"] : "member"
  }] if user["teams"] != null])

  # Iterate over team names to create list of member for each team
  teams_members = { for team in local.teams :
    team => [for member in local.teams_membership : {
      user = member["user"]
      role = member["role"]
    } if member["user"] == team]
  }
}
