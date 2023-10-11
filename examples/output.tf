#The Output Section 

output "fluid_relay_id" {
  description = "The ID of the Fluid Relay."
  value       = module.fluid01.frs_id
}