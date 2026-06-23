variable "storage_name" {
  type = string
}
variable "account_tier" {
  type = string
}
variable "account_replication_type" {
  type = string
}
variable "default" {
  type = string
}
variable "common_tags" {
  type = map(any)
}

variable "container_name" {
  type = string
}
variable "access_type" {
  type = string
}

/*
variable"ip_rules"{
    type=list(string)
}*/