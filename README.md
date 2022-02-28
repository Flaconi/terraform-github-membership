# terraform-github-membership
Terraform module to manage users in github organization

[![lint](https://github.com/flaconi/terraform-github-membership/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-github-membership/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-github-membership/workflows/test/badge.svg)](https://github.com/flaconi/terraform-github-membership/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-github-membership.svg)](https://github.com/flaconi/terraform-github-membership/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 4.20 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.20 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_admins"></a> [admins](#input\_admins)

Description: List of users with admin role

Type:

```hcl
list(object({
    name   = string
    github = string
  }))
```

Default: `[]`

### <a name="input_members"></a> [members](#input\_members)

Description: List of users with member role

Type:

```hcl
list(object({
    name   = string
    github = string
  }))
```

Default: `[]`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_memberships"></a> [memberships](#output\_memberships) | A map of members and admins keyed by username. |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2021 **[Flaconi GmbH](https://github.com/flaconi)**
