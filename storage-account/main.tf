resource "azurerm_storage_account" "backend" {
  name                     = var.storage_name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  blob_properties {
    versioning_enabled = "true"
  }

  network_rules {
    default_action = var.default
    #ip_rules=var.ip_rules
  }

  tags = var.common_tags
}
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.backend.id
  container_access_type = var.access_type
}
