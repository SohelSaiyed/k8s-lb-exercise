terraform {
  required_version = ">= 0.12.0"
  required_providers {
    external   = ">= 2.0"
    kubernetes = ">= 1.13.2"
    helm       = ">= 1.3"
  }
}
