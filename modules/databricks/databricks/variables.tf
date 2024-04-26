variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  default     = "dfm"
}

variable "subscription_id" {
  description = "The subscription_id for Application Object for login to Azure"
  type        = string
}

variable "client_id" {
  description = "The client_id for Application Object for login to Azure"
  type        = string
}

variable "client_secret" {
  description = "The client_secret for Application Object for login to Azure"
  type        = string
}

variable "tenant_id" {
  description = "The tenant_id for Application Object for login to Azure"
  type        = string
}


variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region of the resource"
  type        = string
}

