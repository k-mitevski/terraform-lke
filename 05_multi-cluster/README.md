# Multi cluster with different instance types and Ingress

This code will provision three clusters each with their own Ingress Controller in a single click:

```
terraform init
terraform plan
terraform apply
```

Be patient here, it may take 15-20mins to provision the clusters and install the Ingress Helm charts.

At the end you will have three clusters with different instance type for prod:

1. Development - with `g6-standard-2` instance type.
1. Staging - with `g6-standard-2` instance type.
1. Production - with `g6-dedicated-4` instance type.

When the clusters are ready, in the same folder you will find the generated `kube-config` files.