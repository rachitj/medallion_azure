resource "azurerm_data_factory" "adf" {
  name                = var.df_name
  resource_group_name = var.resource_group_name
  location            = var.location

  identity {
    type = "SystemAssigned"
  }

}