# Terraform GitHub membership module

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

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_team_id"></a> [team\_id](#input\_team\_id) | GitHub team ID | `number` | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | GitHub team members with roles | <pre>list(object({<br>    name = string<br>    role = string # GitHub team members role (member or maintainer)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_members"></a> [members](#output\_members) | GitHub team members |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

**[MIT License](../../LICENSE)**

Copyright (c) 2022 **[Flaconi GmbH](https://github.com/flaconi)**
