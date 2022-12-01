## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.15.1 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_monitoring_bundle"></a> [monitoring\_bundle](#module\_monitoring\_bundle) | blackbird-cloud/monitoring-bundle/helm | 0.0.3 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/4.15.1/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/4.15.1/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_manager_disk_size"></a> [alert\_manager\_disk\_size](#input\_alert\_manager\_disk\_size) | Persistent disk size for alert manager | `string` | `"5Gi"` | no |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | AWS EKS Cluster ID / Name | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | GKE Cluster name to deploy | `string` | n/a | yes |
| <a name="input_grafana_disk_size"></a> [grafana\_disk\_size](#input\_grafana\_disk\_size) | Persistent disk size for grafana pod | `string` | `"5Gi"` | no |
| <a name="input_grafana_ingress_class"></a> [grafana\_ingress\_class](#input\_grafana\_ingress\_class) | Ingress classname for grafana ingress | `string` | `"nginx"` | no |
| <a name="input_grafana_ingress_extra_annotations"></a> [grafana\_ingress\_extra\_annotations](#input\_grafana\_ingress\_extra\_annotations) | Extra annotations for grafana ingress | `map(string)` | `{}` | no |
| <a name="input_grafana_ingress_host"></a> [grafana\_ingress\_host](#input\_grafana\_ingress\_host) | Grafana ingress hostname | `string` | n/a | yes |
| <a name="input_grafana_ingress_overrides"></a> [grafana\_ingress\_overrides](#input\_grafana\_ingress\_overrides) | Ingress config block overrides for grafana | `map(any)` | `{}` | no |
| <a name="input_prometheus_disk_size"></a> [prometheus\_disk\_size](#input\_prometheus\_disk\_size) | Persistent disk size for prometheus metrics | `string` | `"8Gi"` | no |
| <a name="input_prometheus_node_exporter_tolerations"></a> [prometheus\_node\_exporter\_tolerations](#input\_prometheus\_node\_exporter\_tolerations) | Prometheus node exporter tolerations list | `list(map(any))` | n/a | yes |
| <a name="input_prometheus_retention_period"></a> [prometheus\_retention\_period](#input\_prometheus\_retention\_period) | Retention period of prometheus metrics | `string` | `"30d"` | no |
| <a name="input_storage_class_name"></a> [storage\_class\_name](#input\_storage\_class\_name) | K8S Storage Class name for persistence | `string` | `"standard-rwo"` | no |

## Outputs

No outputs.
