terraform {
  required_providers {
    proxmox = {
        source = "bpg/proxmox"
        version = "0.80.0"
    }
    talos = {
        source = "siderolabs/talos"
        version = "0.9.0-alpha.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox.endpoint
  insecure = var.proxmox.insecure

  api_token = var.proxmox.api_token
  ssh {
    agent = true
    username = var.proxmox.username
    password = var.proxmox.password
  }
}