variable "cf_api_url" {
  description = "The Cloud Foundry API URL"
  type        = string
}

variable "cf_org_id" {
  description = "The Cloud Foundry organization ID"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "Project ABC"
}

variable "cf_space_manager" {
  description = "The Cloud Foundry space manager"
  type        = string
  sensitive   = true
}

variable "cf_space_developer" {
  description = "The Cloud Foundry space developer"
  type        = string
  sensitive   = true
}

variable "subaccount_url" {
  description = "The SAP BTP subaccount URL"
  type        = string
}
