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
  validation {
    condition = alltrue([
      for k, v in var.relay_hybrid_connections : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.relay_hybrid_connections : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.relay_hybrid_connections : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.relay_hybrid_connections : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.relay_hybrid_connections : (
        length(v.relay_namespace_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.relay_hybrid_connections : (
        v.user_metadata == null || (length(v.user_metadata) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

