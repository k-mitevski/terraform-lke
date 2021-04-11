# LKE cluster with kube config

This code will provision a cluster with three `g6-standard-2` worker nodes.

You can provision the cluster with the following commands:

```
terraform init
terraform plan
terraform apply
```

In the same folder, you will find a `kube-config` file for accessing the cluster.