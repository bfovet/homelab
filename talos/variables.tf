variable "cluster_name" {
  type    = string
  default = "anton-talos-cluster"
}

variable "default_gateway" {
  type    = string
  default = "<IP address of your default gateway>"
}

variable "talos_controlplane_01_ip_addr" {
  type    = string
  default = "<an unused IP address in your network>"
}

variable "talos_controlplane_02_ip_addr" {
  type    = string
  default = "<an unused IP address in your network>"
}

variable "talos_controlplane_03_ip_addr" {
  type    = string
  default = "<an unused IP address in your network>"
}

variable "talos_worker_01_ip_addr" {
  type    = string
  default = "<an unused IP address in your network>"
}

variable "talos_worker_02_ip_addr" {
  type    = string
  default = "<an unused IP address in your network>"
}

variable "talos_worker_03_ip_addr" {
  type    = string
  default = "<an unused IP address in your network>"
}

variable proxmox_endpoint {
  type = string
}

variable "api_token" {
  type = string
  description = "Token to connect to Proxmox API"
}

variable "ssh_username" {
  type = string
}

variable "ssh_password" {
  type = string
}