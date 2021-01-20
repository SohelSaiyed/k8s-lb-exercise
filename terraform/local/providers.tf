provider "kubernetes" {
  config_context = var.config_context
}

provider "helm" {
  kubernetes {
    config_context = var.config_context
    config_path    = "~/.kube/config"
  }
}
