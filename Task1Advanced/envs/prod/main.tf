module "vm" {
  source = "../../modules/vm"

  cpu_cores    = var.cpu_cores
  ram_gb       = var.ram_gb
  disk_size_gb = var.disk_size_gb
  subnet_id    = var.subnet_id
  ssh_key      = var.ssh_key
}