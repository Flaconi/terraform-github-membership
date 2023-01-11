# Example

Members

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 5.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 5.13 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_members"></a> [members](#module\_members) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [github_team.developers](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | Github token | `string` | n/a | yes |
| <a name="input_org"></a> [org](#input\_org) | Github organization | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_memberships"></a> [memberships](#output\_memberships) | A map of members and admins keyed by username. |
| <a name="output_teams"></a> [teams](#output\_teams) | A map of teams with members and corresponding roles. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
