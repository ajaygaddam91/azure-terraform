resource "azurerm_virtual_network" "test" {
  name                = var.virtual_network.name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = var.virtual_network.address_space
  tags                = var.network_tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet.name
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = var.subnet.address_prefixes
  depends_on           = [azurerm_virtual_network.test]
}

resource "azurerm_network_interface" "interface" {
  name                = var.network_interface.name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  ip_configuration {
    name                          = var.network_interface.name
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = var.network_interface.allocation
  }
}