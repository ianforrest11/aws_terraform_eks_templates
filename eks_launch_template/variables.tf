variable "ec2_ssh_key" {
  description = "The name of the EC2 key pair to use for SSH access to the worker nodes."
  nullable    = false
  type        = string
}

variable "environment" {
  description = "The environment for the EKS cluster (e.g., dev, prod)."
  nullable    = false
  type        = string
}

variable "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  type        = number
  default     = 2
}

variable "http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
  default     = "enabled"
}

variable "http_tokens" {
  description = "The state of token usage for your instance metadata requests. Use 'required' to enforce the use of IMDSv2."
  type        = string
  default     = "required"
}

variable "instance_metadata_tags" {
  description = "determines whether instances created using the launch template will have metadata tags"
  type        = string
  default     = "enabled"
}

variable "image_id" {
  description = "id of ami image to use in eks node group launch template"
  nullable    = false
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  nullable    = false
  type        = string
}

variable "node_security_groups" {
  description = "A list of security group IDs to associate with the node groups of an EKS cluster."
  nullable    = false
  type        = list(string)
}

variable "resource_type" {
  description = "resource type of launch template tags"
  type        = string
}
