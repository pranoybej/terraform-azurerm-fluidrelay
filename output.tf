# The Output Section of the Fluid Relay Module

output "rg_id" {
  description = "The ID of the newly created Resource Group."
  value       = var.create_resource_group ? azurerm_resource_group.rg.*.id : null
}

output "frs_id" {
  description = "The ID of the Fluid Relay Server."
  value       = azurerm_fluid_relay_server.frs.id
}

output "frs_pkey" {
  description = "The primary key for this Fluid Relay server."
  value       = azurerm_fluid_relay_server.frs.primary_key
}

output "frs_skey" {
  description = "The secondary key for this Fluid Relay server."
  value       = azurerm_fluid_relay_server.frs.secondary_key
}