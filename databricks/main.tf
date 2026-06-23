
module "workspace" {
  source              = "./modules/workspace"
  name                = var.name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  sku                 = var.sku
  tags                = var.databricks_tags
}

