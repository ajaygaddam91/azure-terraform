module "vpc" {
  source            = "./modules/vpc"
  virtual_network   = var.virtual_network
  subnet            = var.subnet
  network_interface = var.network_interface
  rg_name           = var.rg_name
  network_tags      = var.network_tags
}