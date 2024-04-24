

data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "app_vault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"

  access_policy{
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    
    key_permissions = [
        "Backup",
        "Create",
        "Decrypt",
        "Delete",
         "Encrypt",
        "Get",
        "Import",
        "List",
        "Purge",
        "Recover",
        "Restore",
        "Sign",
        "Update",
        "Verify"
          ]      

    secret_permissions = [
      "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"
    ]
}

network_acls {
    default_action = "Allow"
    bypass         = "None"
}
}

resource "azurerm_key_vault_secret" "secret" {
  name         = "secretname"
  value        = "secretvalue"
  key_vault_id = azurerm_key_vault.app_vault.id
}



