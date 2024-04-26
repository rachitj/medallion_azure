
# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}


resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source = "./modules/storage_account/storage_account"

  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  location             = var.location
  bronze_folder_name   = var.bronze_folder_name
  silver_folder_name   = var.silver_folder_name
  gold_folder_name     = var.gold_folder_name

  depends_on = [
    azurerm_resource_group.rg
  ]
}


module "budget" {
  source               = "./modules/budget/budget"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  email_address        = var.email_address
  depends_on = [
    module.storage_account
  ]
}


module "data_factory" {
  source = "./modules/data_factory/data_factory"

  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  location             = var.location
  df_name              = var.df_name


  depends_on = [
    azurerm_resource_group.rg
  ]
}


module "key_vault" {
  source = "./modules/key_vault/key_vault"

  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  location             = var.location
  key_vault_name       = var.key_vault_name

  depends_on = [
    azurerm_resource_group.rg
  ]
}


module "sql_database" {
  source = "./modules/sql_database/sql_database"

  resource_group_name    = var.resource_group_name
  location               = var.location
  sql_server_name        = var.sql_server_name
  sql_server_version     = var.sql_server_version
  sql_admin_login        = var.sql_admin_login
  sql_admin_password     = var.sql_admin_password
  sql_db_name            = var.sql_db_name
  sql_firewall_rule_name = var.sql_firewall_rule_name
  start_ip_address       = var.start_ip_address
  end_ip_address         = var.end_ip_address
  depends_on = [
    azurerm_resource_group.rg
  ]
}



module "databricks" {
  source              = "./modules/databricks/databricks"
  subscription_id     = var.subscription_id
  client_id           = var.client_id
  client_secret       = var.client_secret
  tenant_id           = var.tenant_id
  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix



}
