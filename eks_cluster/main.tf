resource "aws_eks_cluster" "this" {
  name      = var.name
  role_arn  = var.role_arn
  version   = var.eks_version
  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }
  tags = {
    Name        = var.name
    Environment = var.environment
  }
}