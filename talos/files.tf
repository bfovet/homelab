locals {
  talos = {
    version = "v1.10.5"
  }
}

resource "proxmox_virtual_environment_download_file" "talos_nocloud_image_1" {
  content_type            = "iso"
  datastore_id            = "local"
  node_name               = "anton1"

  file_name               = "talos-${local.talos.version}-nocloud-amd64.img"
  url                     = "https://factory.talos.dev/image/787b79bb847a07ebb9ae37396d015617266b1cef861107eaec85968ad7b40618/${local.talos.version}/nocloud-amd64.raw.gz"
  decompression_algorithm = "gz"
  overwrite               = false
}

resource "proxmox_virtual_environment_download_file" "talos_nocloud_image_2" {
  content_type            = "iso"
  datastore_id            = "local"
  node_name               = "anton2"

  file_name               = "talos-${local.talos.version}-nocloud-amd64.img"
  url                     = "https://factory.talos.dev/image/787b79bb847a07ebb9ae37396d015617266b1cef861107eaec85968ad7b40618/${local.talos.version}/nocloud-amd64.raw.gz"
  decompression_algorithm = "gz"
  overwrite               = false
}

resource "proxmox_virtual_environment_download_file" "talos_nocloud_image_3" {
  content_type            = "iso"
  datastore_id            = "local"
  node_name               = "anton3"

  file_name               = "talos-${local.talos.version}-nocloud-amd64.img"
  url                     = "https://factory.talos.dev/image/787b79bb847a07ebb9ae37396d015617266b1cef861107eaec85968ad7b40618/${local.talos.version}/nocloud-amd64.raw.gz"
  decompression_algorithm = "gz"
  overwrite               = false
}
