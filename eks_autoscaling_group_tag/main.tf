#EKS can't directly set the "Name" tag, so we use the autoscaling_group_tag resource. 
resource "aws_autoscaling_group_tag" "this" {
  for_each = toset(
    [for asg in flatten(
      [for resources in var.node_group_name : resources.autoscaling_groups]
    ) : asg.name]
  )

  autoscaling_group_name = each.value

  tag {
    key   = "Name"
    value = "${var.node_group_name}_instance"
    propagate_at_launch = true
  }
}