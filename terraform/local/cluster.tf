data "external" "kubectl_config_cluster" {
  program = ["bash", "-e", "${path.module}/get_kubectl_cluster_config.sh"]
  query = {
    context = var.config_context
  }
}