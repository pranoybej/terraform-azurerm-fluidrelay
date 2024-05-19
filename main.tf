# Resource Group Creation or Selection
data "azurerm_resource_group" "erg" {
  count = var.create_resource_group == false ? 1 : 0
  name  = var.resource_group_name
}

resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# Provision an Azure Fluid Relay Server
resource "azurerm_fluid_relay_server" "frs" {
  name                = var.name
  resource_group_name = local.resource_group_name
  location            = local.location
  storage_sku         = var.storage_sku

  dynamic "identity" {
    for_each = var.identity_type != null ? ["identity"] : []
    content {
      type         = var.identity_type
      identity_ids = var.identity_type == "UserAssigned" ? var.identity_ids : null
    }
  }

  tags = var.tags

}