# VM + disk + network interface for Yandex Cloud

resource "yandex_compute_disk" "disk" {
  name = "vm-disk"
  size = var.disk_size_gb
  type = "network-hdd"
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "vm" {
  name = "vm-instance"
  zone = "ru-central1-a"

  resources {
    cores  = var.cpu_cores
    memory = var.ram_gb
  }

  boot_disk {
    disk_id = yandex_compute_disk.disk.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = var.ssh_key
  }
}