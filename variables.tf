variable "name" {
  description = "Name of storage account, if it contains illigal characters (,-_ etc) those will be truncated."
}

variable "resource_group_name" {
  description = "Name of resource group to deploy resources in."
}

variable "create_resource_group" {
  description = "If false it will not create / destroy resource group. Can be useful if resources should deploy to existing resource group."
  type        = bool
  default     = true
}

variable "location" {
  description = "Azure location where resources should be deployed."
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. Changing this forces a new resource to be created."
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS."
  default     = "ZRS"
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot."
  default     = "Hot"
}

variable "network_rules_ip_rules" {
  description = "Network rules restricting access to storage account on IP addresses."
  type        = list(string)
  default     = []
}

variable "network_rules_subnet_ids" {
  description = "Network rules restricting access to subnets."
  type        = list(string)
  default     = []
}

variable "containers" {
  description = "List of containers to create and their access levels."
  type        = list(object({ name = string, access_type = string }))
  default     = []
}

variable "events" {
  description = "List of event subscriptions. See documentation for format description."
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}
