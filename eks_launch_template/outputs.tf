output "node_group_name" {
  value = var.node_group_name
}

output "launch_template_id" {
  value = aws_launch_template.this.id
}