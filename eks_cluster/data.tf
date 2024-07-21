# data source to call EKS-generated cluster_security_group_id to feed to launch template for eks nodes
data "aws_eks_cluster" "this" {
  name = aws_eks_cluster.this.name
}

# data source to get the auth token for the Kubernetes provider
data "aws_eks_cluster_auth" "this" {
  name = aws_eks_cluster.this.name
}