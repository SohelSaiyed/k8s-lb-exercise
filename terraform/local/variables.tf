# settings for your cluster
variable "config_context" {
  type        = string
  description = "kubectl config context"
  default     = "docker-desktop"
}
variable "ingress_nginx_version" {
  type    = string
  default = "2.16.0"
}
variable "my_app_chart_version" {
  type    = string
  default = "0.1.0"
}
