variable "rg" {
  type = string
}
variable "name" {
  type = string
}
variable "sku" {
  type = string
}
variable "databricks_tags" {
  type    = map(any)
  default = {}
}
