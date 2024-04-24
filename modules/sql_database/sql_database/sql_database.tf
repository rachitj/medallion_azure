resource "azurerm_mssql_server" "app_server_mdln_dfm" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     =  var.location
  version             = var.sql_server_version
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password

}


resource "azurerm_mssql_database" "app_db" {
  name           = var.sql_db_name
  server_id      = azurerm_mssql_server.app_server_mdln_dfm.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 4
  read_scale     = false
  sku_name       = "S0"
  zone_redundant = false


  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}