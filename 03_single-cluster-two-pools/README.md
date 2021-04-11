# LKE cluster with two node pools

This code will provision a cluster with two separate node pools.

First node pool with `g6-standard-2`, and second with `g6-dedicated-4` instances.

You can provision the cluster with the following commands:

```
terraform init
terraform plan
terraform apply
```

In the same folder, you will find a `kube-config` file for accessing the cluster.