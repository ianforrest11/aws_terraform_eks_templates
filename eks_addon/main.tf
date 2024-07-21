resource "aws_eks_addon" "this" {
  cluster_name  = var.cluster_name
  addon_name    = var.addon_name
  addon_version = var.addon_version # Adjust based on EKS version 1.30 compatibility
}