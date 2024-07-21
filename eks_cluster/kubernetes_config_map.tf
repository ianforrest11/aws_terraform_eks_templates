### Create a new file for the Kubernetes ConfigMap
provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.this.token
}

resource "kubernetes_config_map" "aws_auth" {
  depends_on = [aws_eks_cluster.this]

  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }

  data = {
    mapUsers = join("\n", [
      for user_arn in var.user_arns : <<EOF
- userarn: ${user_arn}
  username: ${basename(user_arn)}
  groups:
    - system:masters
EOF
    ])
    mapRoles = join("\n", [
      for role_arn in var.role_arns : <<EOF
- rolearn: ${role_arn}
  username: ${basename(role_arn)}
  groups:
    - system:masters
EOF
    ])
  }
}