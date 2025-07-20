module "talos" {
  source = "./talos"

  providers = {
    proxmox = proxmox
  }

  image = {
    version = "v1.10.5"
    schematic = file("${path.module}/talos/image/schematic.yaml")
  }

  cluster = {
    name = "talos"
    endpoint = "192.168.1.100"
    gateway = "192.168.1.254"
    talos_version = "v1.10.5"
    proxmox_cluster = "anton"
  }

  nodes = {
    "talos-cp-00" = {
      host_node = "anton1"
      machine_type = "controlplane"
      ip = "192.168.1.100"
      vm_id = 120
      cpu = 2
      ram_dedicated = 2048
    }
    "talos-cp-01" = {
      host_node = "anton2"
      machine_type = "controlplane"
      ip = "192.168.1.101"
      vm_id = 121
      cpu = 2
      ram_dedicated = 2048
    }
    "talos-cp-02" = {
      host_node = "anton3"
      machine_type = "controlplane"
      ip = "192.168.1.102"
      vm_id = 123
      cpu = 2
      ram_dedicated = 2048
    }
    "talos-worker-00" = {
      host_node = "anton3"
      machine_type = "worker"
      ip = "192.168.1.110"
      vm_id = 130
      cpu = 2
      ram_dedicated = 2048
    }
  }
}