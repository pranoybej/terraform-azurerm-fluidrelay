# Declaring Locals for easier reference
locals {
  resource_group_name = element(coalescelist(data.azurerm_resource_group.erg.*.name, azurerm_resource_group.rg.*.name, [""]), 0)
  location            = element(coalescelist(data.azurerm_resource_group.erg.*.location, azurerm_resource_group.rg.*.location, [""]), 0)
}