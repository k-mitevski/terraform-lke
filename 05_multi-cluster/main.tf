module "dev_cluster" {
    source          = "./cluster_module"
    env_name        = "dev"
    cluster_name    = "learnk8s"
    instance_type   = "g6-standard-2"
}
module "staging_cluster" {
    source          = "./cluster_module"
    env_name        = "staging"
    cluster_name    = "learnk8s"
    instance_type   = "g6-standard-2"
}
module "prod_cluster" {
    source          = "./cluster_module"
    env_name        = "prod"
    cluster_name    = "learnk8s"
    instance_type   = "g6-dedicated-4"
}