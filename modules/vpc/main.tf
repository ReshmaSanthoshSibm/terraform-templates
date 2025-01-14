resource "ibm_is_vpc" "terraform-vpc" {
  name = var.vpc_name
}

output "vpcId" {
  value = ibm_is_vpc.terraform-vpc.id
}