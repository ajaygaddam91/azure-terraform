virtual_network = {
  name          = "Dev-network"
  address_space = ["10.0.0.0/16"]
}

subnet = {
  name             = "Dev-subnet"
  address_prefixes = ["10.0.0.0/24"]

}

network_interface = {
  name       = "Dev-network-interface"
  allocation = "Dynamic"
}

rg_name = "Terradata"

network_tags={
  Name="Developer-network"
  Team="Dev-DataBricks"
}
