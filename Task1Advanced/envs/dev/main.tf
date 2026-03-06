terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.100"
    }
  }
}

provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = "ru-central1-a"
}


module "vm" {
  source = "../../modules/vm"

  cpu_cores    = var.cpu_cores
  ram_gb       = var.ram_gb
  disk_size_gb = var.disk_size_gb
  subnet_id    = var.subnet_id
  ssh_key      = var.ssh_key
}