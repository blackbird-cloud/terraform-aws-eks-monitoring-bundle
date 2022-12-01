module "monitoring_bundle" {
  source  = "blackbird-cloud/monitoring-bundle/helm"
  version = "0.0.4"

  grafana_service_account_create = true
  grafana_service_account_annotations = {
    "eks.amazonaws.com/role-arn" : module.iam_role.iam_role_arn
  }

  grafana_ingress_class = var.grafana_ingress_class
  grafana_ingress_host  = var.grafana_ingress_host
  grafana_ingress_extra_annotations = merge({
    "alb.ingress.kubernetes.io/ssl-redirect"             = "443"
    "alb.ingress.kubernetes.io/load-balancer-attributes" = "deletion_protection.enabled=${var.grafana_ingress_delete_protection},access_logs.s3.enabled=${var.grafana_ingress_enable_s3_logging},access_logs.s3.bucket=${var.grafana_ingress_log_bucket},access_logs.s3.prefix=${var.grafana_ingress_log_prefix},routing.http.drop_invalid_header_fields.enabled=true"
    "alb.ingress.kubernetes.io/scheme"                   = var.grafana_ingress_scheme
    "alb.ingress.kubernetes.io/target-type"              = "ip"
    "alb.ingress.kubernetes.io/group.name"               = var.grafana_ingress_group_name
    "alb.ingress.kubernetes.io/listen-ports"             = "[{\"HTTP\": 80}, {\"HTTPS\":443}]"
    "alb.ingress.kubernetes.io/actions.ssl-redirect"     = "{\"Type\": \"redirect\", \"RedirectConfig\": { \"Protocol\": \"HTTPS\", \"Port\": \"443\", \"StatusCode\": \"HTTP_301\"}}"
  }, var.grafana_ingress_extra_annotations)
  grafana_ingress_overrides = var.grafana_ingress_overrides

  storage_class_name = var.storage_class_name


  grafana_disk_size                    = var.grafana_disk_size
  prometheus_disk_size                 = var.prometheus_disk_size
  prometheus_retention_period          = var.prometheus_retention_period
  prometheus_node_exporter_tolerations = var.prometheus_node_exporter_tolerations
  alert_manager_disk_size              = var.alert_manager_disk_size
}
