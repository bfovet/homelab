#!/bin/bash

pveum role add Terraform -privs "Datastore.Allocate Datastore.AllocateSpace Datastore.AllocateTemplate Datastore.Audit Pool.Allocate Sys.Audit Sys.Console Sys.Modify VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Console VM.Migrate VM.Monitor VM.PowerMgmt SDN.Use"
pveum user add terraform@pve --password $TERRAFORM_USER_PASSWORD
pveum aclmod / -user terraform@pve -role Terraform
pveum user token add terraform@pve terraform -expire 0 -privsep 0 -comment "Terraform token"
