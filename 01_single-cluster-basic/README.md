# Basic provisioning of a cluster with Terraform on LKE

This code will provision a cluster with three `g6-standard-2` worker nodes.

You can provision the cluster with the following commands:

```
terraform init
terraform plan
terraform apply
```

Beware that this code doesn't provide kube config file output. It's better to use the code in the second example.