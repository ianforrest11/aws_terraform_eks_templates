resource "aws_launch_template" "this" {
  name_prefix   = "${var.node_group_name}_"
  image_id      = var.image_id  # Specify the AMI ID or use a data source to fetch the latest AMI
  key_name      = var.ec2_ssh_key
  tag_specifications {
    resource_type = var.resource_type
    tags = {
      Name        = "${var.node_group_name}_instance"
      Environment = var.environment
    }
  }
  metadata_options {
    http_tokens                 = var.http_tokens
    http_put_response_hop_limit = var.http_put_response_hop_limit
    instance_metadata_tags      = var.instance_metadata_tags
  }
  network_interfaces {
    security_groups = var.node_security_groups
  }
  lifecycle {
    create_before_destroy = true
  }
}