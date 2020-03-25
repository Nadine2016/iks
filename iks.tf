variable "private_vlan_dal10" {}
variable "public_vlan_dal10" {}
variable "private_vlan_dal12" {}
variable "public_vlan_dal12" {}

data ibm_resource_group "resource_group" {
  name = "default"
}

resource ibm_container_cluster "schematics" {
    name            = "schematics"
    datacenter      = "dal10"
    machine_type    = "b3c.4x16"
    hardware        = "shared"
    public_vlan_id  = "${var.public_vlan_dal10}"
    private_vlan_id = "${var.private_vlan_dal10}"

    kube_version = "1.16"

    default_pool_size = 3
     
    public_service_endpoint  = "true"
    private_service_endpoint = "true"

    resource_group_id = "${data.ibm_resource_group.resource_group.id}"
}

