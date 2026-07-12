output "relay_hybrid_connections_name" {
  description = "Map of name values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = { for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : k => v.name }
}
output "relay_hybrid_connections_relay_namespace_name" {
  description = "Map of relay_namespace_name values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = { for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : k => v.relay_namespace_name }
}
output "relay_hybrid_connections_requires_client_authorization" {
  description = "Map of requires_client_authorization values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = { for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : k => v.requires_client_authorization }
}
output "relay_hybrid_connections_resource_group_name" {
  description = "Map of resource_group_name values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = { for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : k => v.resource_group_name }
}
output "relay_hybrid_connections_user_metadata" {
  description = "Map of user_metadata values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = { for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : k => v.user_metadata }
}

