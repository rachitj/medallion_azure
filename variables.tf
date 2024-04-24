
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
  description = "The resource group name"
  type        = string
}


variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "tags" {
  description = "The tags associated with the resource group"
  type        = map(string)
}

variable "storage_account_name" {
  description = "The storage account name"
  type        = string
}

variable "bronze_folder_name" {
  description = "The bronze folder name for medallion architecture"
  type        = string
}

variable "silver_folder_name" {
  description = "The silver folder name for medallion architecture"
  type        = string
}

variable "gold_folder_name" {
  description = "The gold folder name"
  type        = string
}

variable "df_name" {
  description = "The data factory name"
  type        = string
}

variable "email_address" {
  description = "The email_address"
  type        = string
}


variable "key_vault_name" {
  description = "The key_vault name"
  type        = string
}


variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "sql_server_version" {
  description = "The SQL Server version"
  type        = string
}

variable "sql_admin_login" {
  description = "The SQL admin login"
  type        = string
}

variable "sql_admin_password" {
  description = "The SQL admin password"
}


variable "sql_db_name" {
  description = "The name of the SQL Database"
  type        = string
}

variable "sql_firewall_rule_name" {
  description = "The name of the SQL firewall rule"
  type        = string
}


variable "start_ip_address" {
  description = "The start IP address"
  type        = string
}

variable "end_ip_address" {
  description = "The end IP address"
  type        = string
}

