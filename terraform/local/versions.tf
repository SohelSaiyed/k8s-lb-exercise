terraform {
  required_version = ">= 1.0"  # Adjust the version according to your needs
  
  required_providers {
    external = {
      source  = "hashicorp/external"
      version = ">= 2.3.0"
    }
    
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.22.0"
    }
    
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.11.0"
    }
  }
}
