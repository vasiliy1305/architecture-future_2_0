# variables for VM module

variable "cpu_cores" {
  description = "CPU cores"
  type        = number
}

variable "ram_gb" {
  description = "RAM in GB"
  type        = number
}

variable "disk_size_gb" {
  description = "Disk size in GB"
  type        = number
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "ssh_key" {
  description = "SSH public key"
  type        = string
}