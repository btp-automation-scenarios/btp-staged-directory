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

variable "subaccount_stage" {
  description = "Stage of the subaccount"
  type        = string
  default     = "DEV"
  validation {
    condition     = contains(["DEV", "TEST", "PROD"], var.subaccount_stage)
    error_message = "Stage must be one of DEV, TEST or PROD"
  }
}

variable "cf_space_supporter" {
  description = "The Cloud Foundry space supporter"
  type        = string
  sensitive   = true
}

variable "subaccount_url" {
  description = "The SAP BTP subaccount URL"
  type        = string
}
