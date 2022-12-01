## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.44.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.44.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_grafana_policy"></a> [grafana\_policy](#module\_grafana\_policy) | terraform-aws-modules/iam/aws//modules/iam-policy | ~> 4 |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 4.10.1 |
| <a name="module_monitoring_bundle"></a> [monitoring\_bundle](#module\_monitoring\_bundle) | blackbird-cloud/monitoring-bundle/helm | 0.0.4 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/4.44.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/4.44.0/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_manager_disk_size"></a> [alert\_manager\_disk\_size](#input\_alert\_manager\_disk\_size) | Persistent disk size for alert manager | `string` | `"5Gi"` | no |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | AWS EKS Cluster ID / Name | `string` | n/a | yes |
| <a name="input_grafana_disk_size"></a> [grafana\_disk\_size](#input\_grafana\_disk\_size) | Persistent disk size for grafana pod | `string` | `"5Gi"` | no |
| <a name="input_grafana_ingress_class"></a> [grafana\_ingress\_class](#input\_grafana\_ingress\_class) | Ingress classname for grafana ingress | `string` | `"alb"` | no |
| <a name="input_grafana_ingress_delete_protection"></a> [grafana\_ingress\_delete\_protection](#input\_grafana\_ingress\_delete\_protection) | n/a | `bool` | `false` | no |
| <a name="input_grafana_ingress_enable_s3_logging"></a> [grafana\_ingress\_enable\_s3\_logging](#input\_grafana\_ingress\_enable\_s3\_logging) | n/a | `bool` | `false` | no |
| <a name="input_grafana_ingress_extra_annotations"></a> [grafana\_ingress\_extra\_annotations](#input\_grafana\_ingress\_extra\_annotations) | Extra annotations for grafana ingress | `map(string)` | `{}` | no |
| <a name="input_grafana_ingress_group_name"></a> [grafana\_ingress\_group\_name](#input\_grafana\_ingress\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_grafana_ingress_host"></a> [grafana\_ingress\_host](#input\_grafana\_ingress\_host) | Grafana ingress hostname | `string` | n/a | yes |
| <a name="input_grafana_ingress_log_bucket"></a> [grafana\_ingress\_log\_bucket](#input\_grafana\_ingress\_log\_bucket) | n/a | `string` | `""` | no |
| <a name="input_grafana_ingress_log_prefix"></a> [grafana\_ingress\_log\_prefix](#input\_grafana\_ingress\_log\_prefix) | n/a | `string` | `"grafana"` | no |
| <a name="input_grafana_ingress_overrides"></a> [grafana\_ingress\_overrides](#input\_grafana\_ingress\_overrides) | Ingress config block overrides for grafana | `map(any)` | `{}` | no |
| <a name="input_grafana_ingress_scheme"></a> [grafana\_ingress\_scheme](#input\_grafana\_ingress\_scheme) | (optional) describe your variable | `string` | `"internet-facing"` | no |
| <a name="input_prometheus_disk_size"></a> [prometheus\_disk\_size](#input\_prometheus\_disk\_size) | Persistent disk size for prometheus metrics | `string` | `"8Gi"` | no |
| <a name="input_prometheus_node_exporter_tolerations"></a> [prometheus\_node\_exporter\_tolerations](#input\_prometheus\_node\_exporter\_tolerations) | Prometheus node exporter tolerations list | `list(map(any))` | n/a | yes |
| <a name="input_prometheus_retention_period"></a> [prometheus\_retention\_period](#input\_prometheus\_retention\_period) | Retention period of prometheus metrics | `string` | `"30d"` | no |
| <a name="input_storage_class_name"></a> [storage\_class\_name](#input\_storage\_class\_name) | K8S Storage Class name for persistence | `string` | `"gp2"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | n/a | yes |

## Outputs

No outputs.
