variable "cluster_id" {
  type        = string
  description = "AWS EKS Cluster ID / Name"
}

variable "tags" {
  type        = map(string)
  description = "Tags for AWS resources"
}

# ==== SHARED ====

variable "grafana_ingress_host" {
  type        = string
  description = "Grafana ingress hostname"
}

variable "grafana_ingress_class" {
  type        = string
  default     = "alb"
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


variable "grafana_ingress_scheme" {
  type        = string
  description = "Ingress scheme for grafana"
  default     = "internet-facing"
}

variable "grafana_ingress_group_name" {
  type        = string
  description = "Ingress group name for grafana"
}

variable "grafana_ingress_log_bucket" {
  type        = string
  default     = ""
  description = "Log bucket name for grafana ingress access logs"
}

variable "grafana_ingress_log_prefix" {
  type        = string
  default     = "grafana"
  description = "Ingress log prefix"
}

variable "grafana_ingress_enable_s3_logging" {
  type        = bool
  default     = false
  description = "Enable S3 logging for grafana ingress access"
}

variable "grafana_ingress_delete_protection" {
  type        = bool
  default     = false
  description = "Enable delete protection for grafana ingress"
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
  default     = "gp2"
  description = "K8S Storage Class name for persistence"
}
