variable "virtual_network" {
  type = object({
    name          = string,
    address_space = list(string)
  })
}

variable "subnet" {
  type = object({
    name             = string,
    address_prefixes = list(string)
  })
}
variable "network_interface" {
  type = object({
    name       = string,
    allocation = string
  })
}

variable "rg_name" {
  type = string
}

variable "network_tags" {
  type    = map(any)
  default = {}
}