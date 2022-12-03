## ESXI Host Variables

variable "esxi_hostname" {
    type = string
    description = "hostname for ESXI host"
}

variable "esxi_hostport" {
    type = string
    description = "SSH port for ESXI host"
}

variable "esxi_hostssl" {
    type = string
    description = "SSL port for ESXI host"
}

variable "esxi_username" {
    type = string
    description = "username for ESXI host"
}

variable "esxi_password" {
    type = string
    description = "password for ESXI host"
}

## ESXI Guest Variables 

variable "vm_count" {
  type        = string
  description = "Number of Virtual Machines"
}

variable "guest_name_prefix" {
    type = string
    description = "name for guest VM"
}

variable "disk_store" {
    type = string
    description = "Data Store for guest VM"
}

variable "clone_from_vm" {
    type = string
    description = "Template to clone for new guest VM"
}

variable "boot_firmware" {
    type = string
    description = "Boot firmware for Guest OS"
}

variable "virtual_network" {
    type = string
    description = "Virtual Network for guest VM"
}

variable "nic_type" {
    type = string
    description = "NIC type for guest VM"
}
