resource "ibm_resource_group" "resourceGroup" {
  name     = var.resourceGroup_name
}

output "resourceGroupID" {
    value = ibm_resource_group.resourceGroup.id
}