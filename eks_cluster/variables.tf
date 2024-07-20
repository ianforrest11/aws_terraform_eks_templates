variable "environment" {
  description = "The environment for the EKS cluster (e.g., dev, prod)."
  nullable    = false
  type        = string
}

variable "name" {
  description = "The name of the EKS cluster."
  nullable    = false
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role to associate with the EKS cluster."
  nullable    = false
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EKS cluster."
  nullable    = false
  type        = list(string)
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the EKS cluster."
  nullable    = false
  type        = list(string)
}

variable "eks_version" {
  description = "The version of Kubernetes to use for the EKS cluster."
  nullable    = false
  type        = string
}
