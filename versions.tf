terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }

    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.2.5"
    }
  }
  required_version = ">= 1.1.0"
}