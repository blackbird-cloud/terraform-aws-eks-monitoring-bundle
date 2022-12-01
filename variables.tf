variable "cluster_id" {
  type        = string
  description = "AWS EKS Cluster ID / Name"
}

# ==== SHARED ====

variable "grafana_ingress_host" {
  type        = string
  description = "Grafana ingress hostname"
}

variable "grafana_ingress_class" {
  type        = string
  default     = "nginx"
  description = "Ingress classname for grafana ingress"
}

variable "grafana_disk_size" {
  type        = string
  default     = "5Gi"
  description = "Persistent disk size for grafana pod"
}

variable "prometheus_disk_size" {
  type        = string
  default     = "8Gi"
  description = "Persistent disk size for prometheus metrics"
}

variable "prometheus_retention_period" {
  type        = string
  default     = "30d"
  description = "Retention period of prometheus metrics"
}

variable "prometheus_node_exporter_tolerations" {
  type        = list(map(any))
  description = "Prometheus node exporter tolerations list"
}

variable "alert_manager_disk_size" {
  type        = string
  default     = "5Gi"
  description = "Persistent disk size for alert manager"
}

variable "grafana_ingress_extra_annotations" {
  type        = map(string)
  default     = {}
  description = "Extra annotations for grafana ingress"
}

variable "grafana_ingress_overrides" {
  type        = map(any)
  default     = {}
  description = "Ingress config block overrides for grafana"
}

variable "storage_class_name" {
  type        = string
  default     = "standard-rwo"
  description = "K8S Storage Class name for persistence"
}
