storage_name             = "terrabackend569"
account_tier             = "Standard"
account_replication_type = "LRS"
default                  = "Allow"
container_name           = "environment"
access_type              = "container"
#ip_rules=["0.0.0.0"]
common_tags = {
  Environment = "Dev|QA|Prod"
  Team        = "DataBricks"
  User        = "Developer"
}