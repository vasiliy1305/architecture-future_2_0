output "vm_id" {
  description = "Output VM ID"
  value       = yandex_compute_instance.vm.id
}

output "vm_ip" {
  description = "Output VM IP"
  value       = yandex_compute_instance.vm.network_interface[0].nat_ip_address
}

output "disk_id" {
  description = "Output disk ID"
  value       = yandex_compute_disk.disk.id
}