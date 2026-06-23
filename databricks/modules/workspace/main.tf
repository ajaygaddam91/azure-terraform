/*
resource "azurerm_resource_group" "rg"{
    name=var.rg_name
    location=var.location
}*/

resource "azurerm_databricks_workspace" "test"{
    name=var.name
    resource_group_name=var.resource_group_name
    location=var.location
    sku=var.sku
    tags=var.tags
}

