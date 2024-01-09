output "release_metadata" {
  value = resource.helm_release.release.metadata
}

output "release_manifest" {
  value = data.helm_template.release.manifest
}

output "release_notes" {
  value = data.helm_template.release.notes
}