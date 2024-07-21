output "cluster_endpoint" {
  description = "The endpoint for the EKS control plane."
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_security_group_id" {
  description = "The security group ID created by EKS for the cluster."
  value       = data.aws_eks_cluster.this.vpc_config[0].cluster_security_group_id
}

output "cluster_certificate_authority_data" {
  description = "The certificate data for the EKS control plane."
  value       = aws_eks_cluster.this.certificate_authority.0.data
}

#output for cluster name
output "cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.this.name
}