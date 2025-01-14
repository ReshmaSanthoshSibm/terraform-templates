module "vpc" {
    source = "../modules/vpc"
    vpc_name = var.vpc_name
}

module "resource_groups" {
    source = "../modules/resource_groups"
    resourceGroup_name = var.resourceGroup_name
}
module "cluster"{
    source = "../modules/cluster"
    resource_group_id = module.resource_groups.resourceGroupID
    vpc_id = module.vpc.vpcId
}