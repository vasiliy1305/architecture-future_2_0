output "deployment_marker_file" {
  description = "Path to the generated deployment marker file"
  value       = local_file.deployment_marker.filename
}