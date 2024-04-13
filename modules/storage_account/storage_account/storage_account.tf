
resource "azurerm_storage_account" "storage" {
  name = var.storage_account_name
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "development"
  }
}

resource "azurerm_storage_container" "create_container" {
  for_each = {
    bronze = var.bronze_folder_name,
    silver = var.silver_folder_name
    gold = var.gold_folder_name
  }
  name = each.key
  storage_account_name = azurerm_storage_account.storage.name
  container_access_type = var.container_access_type
}


output "storage_account_key" {
  value = azurerm_storage_account.storage.primary_access_key
}



