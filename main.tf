resource "msgraph_update_resource" "update_resources" {
  for_each = var.update_resources

  url                     = each.value.url
  api_version             = each.value.api_version
  body                    = each.value.body
  ignore_missing_property = each.value.ignore_missing_property
  read_query_parameters   = each.value.read_query_parameters
  response_export_values  = each.value.response_export_values
  retry                   = each.value.retry
  update_method           = each.value.update_method
  update_query_parameters = each.value.update_query_parameters

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

