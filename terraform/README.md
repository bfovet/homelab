https://blog.stonegarden.dev/articles/2024/08/talos-proxmox-tofu/#main-course
https://olav.ninja/talos-cluster-on-proxmox-with-terraform
https://factory.talos.dev/?arch=amd64&cmdline-set=true&extensions=-&extensions=siderolabs%2Fiscsi-tools&extensions=siderolabs%2Fqemu-guest-agent&platform=metal&target=metal&version=1.10.5


eval (ssh-agent -c)
ssh-add ~/.ssh/id_ed25519
ssh-add -l

terraform init
terraform plan
terraform apply
terraform output -raw kube_config > ~/.kube/config
terraform output -raw talos_config > ~/.talos/config
