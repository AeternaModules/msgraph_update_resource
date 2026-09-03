output "update_resources_id" {
  description = "Map of id values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "update_resources_api_version" {
  description = "Map of api_version values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "update_resources_body" {
  description = "Map of body values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.body if v.body != null }
}
output "update_resources_ignore_missing_property" {
  description = "Map of ignore_missing_property values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.ignore_missing_property if v.ignore_missing_property != null }
}
output "update_resources_output" {
  description = "Map of output values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.output if v.output != null }
}
output "update_resources_read_query_parameters" {
  description = "Map of read_query_parameters values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.read_query_parameters if v.read_query_parameters != null && length(v.read_query_parameters) > 0 }
}
output "update_resources_response_export_values" {
  description = "Map of response_export_values values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.response_export_values if v.response_export_values != null && length(v.response_export_values) > 0 }
}
output "update_resources_retry" {
  description = "Map of retry values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.retry if v.retry != null && length(v.retry) > 0 }
}
output "update_resources_update_method" {
  description = "Map of update_method values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.update_method if v.update_method != null && length(v.update_method) > 0 }
}
output "update_resources_update_query_parameters" {
  description = "Map of update_query_parameters values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.update_query_parameters if v.update_query_parameters != null && length(v.update_query_parameters) > 0 }
}
output "update_resources_url" {
  description = "Map of url values across all update_resources, keyed the same as var.update_resources"
  value       = { for k, v in msgraph_update_resource.update_resources : k => v.url if v.url != null && length(v.url) > 0 }
}

