variable "project_id" {
  type        = string
  description = "Project ID where the resources will be deployed"
}

variable "region" {
  type        = string
  description = "Region where regional resources will be deployed (e.g. us-central1)"
}

variable "name" {
  
}

variable "node_machine_type" {
  
}

variable "node_count" {
  type = number
}

variable "vpc_primary_cidr" {
  type = string
}

variable "k8s_pods_secondary_cidr" {
  type = string
}

variable "k8s_service_secondary_cidr" {
  type = string
}