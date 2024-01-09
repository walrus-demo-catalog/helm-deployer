## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.25.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.12.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.release](https://registry.terraform.io/providers/hashicorp/helm/2.12.1/docs/resources/release) | resource |
| [helm_template.release](https://registry.terraform.io/providers/hashicorp/helm/2.12.1/docs/data-sources/template) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | The name of the Helm chart, such as nginx | `string` | n/a | yes |
| <a name="input_chart_repository"></a> [chart\_repository](#input\_chart\_repository) | The URL of the Helm chart repository, such as https://charts.bitnami.com/bitnami or oci://registry-1.docker.io/bitnamicharts | `string` | n/a | yes |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | The version of the Helm chart | `string` | `""` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Force resource update through delete/recreate if needed | `bool` | `false` | no |
| <a name="input_private_repository"></a> [private\_repository](#input\_private\_repository) | Whether it is a private repository | `bool` | `false` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | The name of the Helm release | `string` | n/a | yes |
| <a name="input_release_namespace"></a> [release\_namespace](#input\_release\_namespace) | The namespace of the Helm release | `string` | `"default"` | no |
| <a name="input_repository_password"></a> [repository\_password](#input\_repository\_password) | Password for HTTP basic authentication against the repository | `string` | `""` | no |
| <a name="input_repository_username"></a> [repository\_username](#input\_repository\_username) | Username for HTTP basic authentication against the repository | `string` | `""` | no |
| <a name="input_reuse_values"></a> [reuse\_values](#input\_reuse\_values) | Whether to reuse values | `bool` | `false` | no |
| <a name="input_set_values_yaml"></a> [set\_values\_yaml](#input\_set\_values\_yaml) | Custiomized values.yaml to be merged with the default values.yaml | `string` | `""` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Time in seconds to wait for any individual kubernetes operation (like Jobs for hooks) | `number` | `300` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_release_manifest"></a> [release\_manifest](#output\_release\_manifest) | n/a |
| <a name="output_release_metadata"></a> [release\_metadata](#output\_release\_metadata) | n/a |
| <a name="output_release_notes"></a> [release\_notes](#output\_release\_notes) | n/a |
