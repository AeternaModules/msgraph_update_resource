variable "update_resources" {
  description = <<EOT
Map of update_resources, attributes below
Required:
    - url
Optional:
    - api_version
    - body
    - ignore_missing_property
    - read_query_parameters
    - response_export_values
    - retry
    - update_method
    - update_query_parameters
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    url                     = string
    api_version             = optional(string)
    body                    = optional(any)
    ignore_missing_property = optional(bool)
    read_query_parameters   = optional(map(any))
    response_export_values  = optional(map(string))
    retry = optional(object({
      error_message_regex = list(string)
    }))
    update_method           = optional(string)
    update_query_parameters = optional(map(any))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

