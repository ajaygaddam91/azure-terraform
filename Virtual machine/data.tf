data "azurerm_resource_group" "rg_detail"{
    name="Terradata"
    }
data "azurerm_network_interface" "main"{
    resource_group_name=data.azurerm_resource_group.rg_detail.name
    name="Test-network-interface"
}