#The variables section of Fluid Relay Module

variable "create_resource_group" {
  type        = bool
  description = "(Optional) Do you have a Resource Group or want to create a new one ?"
  default     = false
}

variable "resource_group_name" {
  description = "(Required) The name of an existing resource group to be imported."
  type        = string
}

variable "location" {
  type        = string
  description = "(Optional) The Azure Region where the Fluid Relay should exist."
  default     = ""
}

variable "name" {
  type        = string
  description = "(Required) The name which should be used for this Fluid Relay Server."
}

variable "storage_sku" {
  type        = string
  description = "(Optional) Sku of the storage associated with the resource, Possible values are 'standard' and 'basic'."
  default     = "standard"
}

variable "identity_type" {
  type        = string
  description = "(Optional) Specifies the type of Managed Service Identity that should be configured on this Fluid Relay."
  default     = null
}

variable "identity_ids" {
  type        = list(string)
  description = "(Optional) A list of User Assigned Identity IDs to be assigned to this Fluid Relay."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags which should be assigned to the Fluid Relay Server."
  default     = {}
}