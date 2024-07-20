variable "aws_launch_template" {
  description = "The ID of the launch template to use for the node group."
  nullable    = false
  type        = string
}

variable "aws_launch_template_version" {
  description = "The version of the launch template to use for the node group."
  nullable    = false
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  nullable    = false
  type        = string
}

variable "desired_size" {
  description = "The desired number of worker nodes in the EKS node group."
  nullable    = false
  type        = number
}

variable "environment" {
  description = "The environment for the EKS cluster (e.g., dev, prod)."
  nullable    = false
  type        = string
}

variable "instance_types" {
  description = "A list of instance types for the EKS node group."
  nullable    = false
  type        = list(string)
}

variable "max_size" {
  description = "The maximum number of worker nodes in the EKS node group."
  nullable    = false
  type        = number
}

variable "min_size" {
  description = "The minimum number of worker nodes in the EKS node group."
  nullable    = false
  type        = number
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  nullable    = false
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the IAM role to associate with the EKS node group."
  nullable    = false
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the EKS node group."
  nullable    = false
  type        = list(string)
}
