output "relay_hybrid_connections" {
  description = "All relay_hybrid_connection resources"
  value       = azurerm_relay_hybrid_connection.relay_hybrid_connections
}
output "relay_hybrid_connections_name" {
  description = "List of name values across all relay_hybrid_connections"
  value       = [for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : v.name]
}
output "relay_hybrid_connections_relay_namespace_name" {
  description = "List of relay_namespace_name values across all relay_hybrid_connections"
  value       = [for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : v.relay_namespace_name]
}
output "relay_hybrid_connections_requires_client_authorization" {
  description = "List of requires_client_authorization values across all relay_hybrid_connections"
  value       = [for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : v.requires_client_authorization]
}
output "relay_hybrid_connections_resource_group_name" {
  description = "List of resource_group_name values across all relay_hybrid_connections"
  value       = [for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : v.resource_group_name]
}
output "relay_hybrid_connections_user_metadata" {
  description = "List of user_metadata values across all relay_hybrid_connections"
  value       = [for k, v in azurerm_relay_hybrid_connection.relay_hybrid_connections : v.user_metadata]
}

