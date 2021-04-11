variable "cluster_name" {
  description = "The name for the LKE cluster"
  default     = "learnk8s"
}

variable "env_name" {
  description = "The environment for the LKE cluster"
  default     = "dev"
}

variable "instance_type" {
  description = "The node pool instance type"
  default = "g6-standard-2"
}
