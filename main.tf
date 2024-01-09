locals {
  namespace = coalesce(try(var.release_namespace, null), try(var.context["environment"]["namespace"], null))
}

resource "helm_release" "release" {
  name                = var.release_name
  namespace           = local.namespace
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
  namespace           = local.namespace
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
