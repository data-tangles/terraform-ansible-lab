terraform {
  required_version = ">= 0.13"
  required_providers {
    esxi = {
      source = "registry.terraform.io/josenk/esxi"
      #
      # For more information, see the provider source documentation:
      # https://github.com/josenk/terraform-provider-esxi
      # https://registry.terraform.io/providers/josenk/esxi
    }
  }
  backend "remote" {}
}

provider "esxi" {
  esxi_hostname      = var.esxi_hostname
  esxi_hostport      = var.esxi_hostport
  esxi_hostssl       = var.esxi_hostssl
  esxi_username      = var.esxi_username
  esxi_password      = var.esxi_password
}

resource "esxi_guest" "vm" {
  count              = var.vm_count
  guest_name         = "${var.guest_name_prefix}-${count.index}"
  disk_store         = var.disk_store
  clone_from_vm      = var.clone_from_vm
  boot_firmware      = var.boot_firmware


  network_interfaces {
    virtual_network = var.virtual_network
    nic_type = var.nic_type
  }
}