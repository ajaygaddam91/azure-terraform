virtual_network = {
  name          = "prod-network"
  address_space = ["10.0.0.0/16"]
}

subnet = {
  name             = "prod-subnet"
  address_prefixes = ["10.0.0.0/24"]

}

network_interface = {
  name       = "prod-network-interface"
  allocation = "Dynamic"
}

rg_name = "Terradata"

network_tags={
  Network_name="prod"
  Team="prod-Team"
}