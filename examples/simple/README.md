# Example

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.20 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_members"></a> [members](#module\_members) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | Github token | `string` | n/a | yes |
| <a name="input_org"></a> [org](#input\_org) | Github organization | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_memberships"></a> [memberships](#output\_memberships) | A map of members and admins keyed by username. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
