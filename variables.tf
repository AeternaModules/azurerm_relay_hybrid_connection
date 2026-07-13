variable "relay_hybrid_connections" {
  description = <<EOT
Map of relay_hybrid_connections, attributes below
Required:
    - name
    - relay_namespace_name
    - resource_group_name
Optional:
    - requires_client_authorization
    - user_metadata
EOT

  type = map(object({
    name                          = string
    relay_namespace_name          = string
    resource_group_name           = string
    requires_client_authorization = optional(bool)
    user_metadata                 = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_relay_hybrid_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: relay_namespace_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: user_metadata
  #   condition: length(value) > 0
  #   message:   must not be empty
}

