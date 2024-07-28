#EKS can't directly set the "Name" tag, so we use the autoscaling_group_tag resource. 
resource "aws_autoscaling_group_tag" "this" {
  autoscaling_group_name = var.node_group_name

  tag {
    key                 = "Name"
    value               = "${var.node_group_name}_instance"
    propagate_at_launch = true
  }
}