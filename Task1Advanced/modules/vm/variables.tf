# переменные к ВМ (var - для того чтобы в дальнешем не путать с выходными)

variable "cpu_cores" {
  description = "Var CPU cores"
  type        = number
}

variable "ram_gb" {
  description = "Var RAM in GB"
  type        = number
}

variable "disk_size_gb" {
  description = "Var Disk in GB"
  type        = number
}

variable "subnet_id" {
  description = "Var Subnet ID"
  type        = string
}

variable "ssh_key" {
  description = "Var SSH public key"
  type        = string
}