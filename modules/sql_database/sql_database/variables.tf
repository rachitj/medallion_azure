
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

