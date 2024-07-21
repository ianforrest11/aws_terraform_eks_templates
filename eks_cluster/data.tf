# data source to call EKS-generated cluster_security_group_id to feed to launch template for eks nodes
data "aws_eks_cluster" "this" {
  name = aws_eks_cluster.this.name
}