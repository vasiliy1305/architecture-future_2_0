# пока просто пример

resource "example_vm" "vm" {
  cpu = var.cpu_cores
  ram = var.ram_gb
  network_interface_id  = example_network_interface.nic.id
  ssh_key = var.ssh_key
}

resource "example_disk" "disk" {
  size = var.disk_size_gb
  vm_id = example_vm.vm.id
}

resource "example_network_interface" "nic" {
  subnet_id = var.subnet_id
}