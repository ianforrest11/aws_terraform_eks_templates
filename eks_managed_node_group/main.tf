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

#EKS can't directly set the "Name" tag, so we use the autoscaling_group_tag resource. 
resource "aws_autoscaling_group_tag" "this" {
  autoscaling_group_name = aws_eks_node_group.this.resources[0].autoscaling_groups[0].name

  tag {
    key                 = "Name"
    value               = "${aws_eks_node_group.this.node_group_name}_instance"
    propagate_at_launch = true
  }
  depends_on = [aws_eks_node_group.this]
}