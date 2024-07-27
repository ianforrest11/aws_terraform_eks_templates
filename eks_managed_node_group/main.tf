resource "aws_eks_node_group" "this" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids
  scaling_config {
    desired_size  = var.desired_size
    max_size      = var.max_size
    min_size      = var.min_size
  }
  instance_types  = var.instance_types
  # launch_template {
  #   id      = var.aws_launch_template
  #   version = var.aws_launch_template_version
  # }
  tags = {
    Name        = var.node_group_name
    Environment = var.environment
  }
}