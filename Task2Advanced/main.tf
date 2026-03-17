resource "local_file" "deployment_marker" {
  content  = "Infrastructure deployed via Terraform with remote state"
  filename = "${path.module}/deployment_marker.txt"
}