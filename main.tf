terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.25.1"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}

resource "helm_release" "release" {
  name                = var.release_name
  namespace           = var.release_namespace
  repository          = var.chart_repository
  repository_username = var.private_repository == true ? var.repository_username : null
  repository_password = var.private_repository == true ? var.repository_password : null
  chart               = var.chart_name
  version             = var.chart_version

  values       = [var.set_values_yaml]
  reuse_values = var.reuse_values

  create_namespace = true
  force_update     = var.force_update
  timeout          = var.timeout
  wait             = false
  max_history      = 10
}

data "helm_template" "release" {
  name                = var.release_name
  namespace           = var.release_namespace
  repository          = var.chart_repository
  repository_username = var.private_repository == true ? var.repository_username : null
  repository_password = var.private_repository == true ? var.repository_password : null
  chart               = var.chart_name
  version             = var.chart_version

  values       = [var.set_values_yaml]
  reuse_values = var.reuse_values

  create_namespace = true
  timeout          = var.timeout
  wait             = false
}