variable "release_name" {
  type        = string
  description = "The name of the Helm release"
}

variable "release_namespace" {
  type        = string
  description = "The namespace of the Helm release"
  default     = "default"
}

variable "chart_repository" {
  type        = string
  description = "The URL of the Helm chart repository, such as https://charts.bitnami.com/bitnami or oci://registry-1.docker.io/bitnamicharts"
}

variable "private_repository" {
  description = "Whether it is a private repository"
  default     = false
}

variable "repository_username" {
  type        = string
  description = "Username for HTTP basic authentication against the repository"
  default     = ""
}

variable "repository_password" {
  type        = string
  description = "Password for HTTP basic authentication against the repository"
  default     = ""
}

variable "chart_name" {
  type        = string
  description = "The name of the Helm chart, such as nginx"
}

variable "chart_version" {
  type        = string
  description = "The version of the Helm chart"
  default     = ""
}

variable "set_values_yaml" {
  description = "Custiomized values.yaml to be merged with the default values.yaml"
  default     = ""
}

variable "reuse_values" {
  description = "Whether to reuse values"
  default     = false
}

variable "force_update" {
  description = "Force resource update through delete/recreate if needed"
  default     = false
}

variable "timeout" {
  type        = number
  description = "Time in seconds to wait for any individual kubernetes operation (like Jobs for hooks)"
  default     = 300
}
