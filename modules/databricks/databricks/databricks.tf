
terraform {
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.2.5"
    }
  }
}



provider "databricks" {
  host                        = azurerm_databricks_workspace.this.workspace_url
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
  azure_client_id             = var.client_id
  azure_client_secret         = var.client_secret
  azure_tenant_id             = var.tenant_id
  

}



resource "azurerm_databricks_workspace" "this" {
  location            = var.location
  name                = "${var.prefix}-workspace"
  resource_group_name = var.resource_group_name
  sku                 = "standard"


}
