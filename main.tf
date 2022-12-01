module "monitoring_bundle" {
  source  = "blackbird-cloud/monitoring-bundle/helm"
  version = "0.0.3"

  grafana_ingress_class             = var.grafana_ingress_class
  grafana_ingress_host              = var.grafana_ingress_host
  grafana_ingress_extra_annotations = var.grafana_ingress_extra_annotations
  grafana_ingress_overrides         = var.grafana_ingress_overrides

  storage_class_name = var.storage_class_name


  grafana_disk_size                    = var.grafana_disk_size
  prometheus_disk_size                 = var.prometheus_disk_size
  prometheus_retention_period          = var.prometheus_retention_period
  prometheus_node_exporter_tolerations = var.prometheus_node_exporter_tolerations
  alert_manager_disk_size              = var.alert_manager_disk_size
}
