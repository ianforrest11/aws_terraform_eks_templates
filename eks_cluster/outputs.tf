output "cluster_endpoint" {
  description = "The endpoint for the EKS control plane."
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_certificate_authority_data" {
  description = "The certificate data for the EKS control plane."
  value       = aws_eks_cluster.this.certificate_authority.0.data
}