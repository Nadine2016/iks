variable "private_vlan_dal10" {}
variable "public_vlan_dal10" {}
variable "private_vlan_dal12" {}
variable "public_vlan_dal12" {}

data ibm_resource_group "resource_group" {
  name = "default"
}
