# Provision an Azure Fluid Relay Server in a new resouce group
module "fluid01" {
  source                = "../"
  create_resource_group = true
  resource_group_name   = var.rg_name
  location              = var.location
  name                  = "myflr01"
  tags = {
    Application = "Fluid Relay"
    Type        = "SaaS"
    Owner       = "Pranoy Bej"
  }
}