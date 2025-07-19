provider "proxmox" {
  endpoint = var.proxmox_endpoint
  api_token = var.api_token
  insecure = true

  ssh {
    agent = true
    username = var.ssh_username
    password = var.ssh_password
  }
}
