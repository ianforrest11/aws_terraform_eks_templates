variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "addon_name" {
  description = "The name of the EKS addon (e.g., coredns, vpc-cni, kube-proxy)"
  type        = string
}

variable "addon_version" {
  description = "The version of the EKS addon"
  type        = string
}
