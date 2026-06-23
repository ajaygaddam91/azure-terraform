terraform {
  required_version = ">=1.15.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Terradata"
    storage_account_name = "terrabackend569"
    container_name       = "environment"

  }
}

provider "azurerm" {
  features {}
}