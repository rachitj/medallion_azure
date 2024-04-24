
variable "resource_group_name" {
  description = "The resource group name"
  type        = string
}


variable "location" {
  description = "The location of the resource group"
  type        = string
}
variable"sql_server_name"{
  description = "The name of the SQL Server"
  type        = string
}

variable "sql_server_version"{
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
