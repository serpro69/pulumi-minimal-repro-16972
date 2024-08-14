variable "billing_account" {
  description = "GCP Billing Account ID (default: '')"
  type        = string
}

variable "folder_id" {
  description = "GCP Folder ID"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "project_name" {
  description = "GCP Project name"
  type        = string
}

variable "auto_create_network" {
  description = "Create the 'default' network automatically"
  type        = bool
  default     = false
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the project"
  type        = map(string)
  default     = {}
}

variable "services" {
  description = "Optional list of services to enable for the project"
  type        = list(string)
  default     = []
}

