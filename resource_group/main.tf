resource "azurerm_resource_group" "terradata"{
    name=var.resourcegroup_name.name
    location=var.resourcegroup_name.location
    tags=var.resourcegroup_name.tags
}