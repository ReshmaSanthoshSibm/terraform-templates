resource "ibm_container_vpc_cluster" "cluster" {
  name              = "my_vpc_cluster"
  vpc_id            = var.vpc_id
  kube_version      = "1.17.5"
  flavor            = "bx2.2x8"
  worker_count      = "1"
  resource_group_id = var.resource_group_id
  zones {
      subnet_id = "0717-0c0899ce-48ac-4eb6-892d-4e2e1ff8c9478"
      name      = "us-south-1"
    }
}