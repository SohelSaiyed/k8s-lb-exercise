resource "kubernetes_namespace" "ingress-nginx" {
  metadata {
    name = "ingress-nginx"
  }
}

resource "helm_release" "ingress_nginx" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = kubernetes_namespace.ingress-nginx.metadata[0].name
  version    = var.ingress_nginx_version
}

resource "kubernetes_namespace" "my-app-ns" {
  metadata {
    name = "my-app"
  }
}

resource "helm_release" "my-app" {
  name       = "my-app"
  repository = "https://github.com/SohelSaiyed/helm-chart/raw/master/"
  chart      = "my-app"
  namespace  = kubernetes_namespace.my-app-ns.metadata[0].name
  version    = var.my_app_chart_version
}
