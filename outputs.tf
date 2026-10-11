output "core_capture_filters_id" {
  description = "Map of id values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no id are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_capture_filters_compartment_id" {
  description = "Map of compartment_id values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_capture_filters_defined_tags" {
  description = "Map of defined_tags values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_capture_filters_display_name" {
  description = "Map of display_name values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no display_name are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_capture_filters_filter_type" {
  description = "Map of filter_type values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no filter_type are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.filter_type if v.filter_type != null && length(v.filter_type) > 0 }
}
output "core_capture_filters_flow_log_capture_filter_rules" {
  description = "Map of flow_log_capture_filter_rules values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no flow_log_capture_filter_rules are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.flow_log_capture_filter_rules if v.flow_log_capture_filter_rules != null && length(v.flow_log_capture_filter_rules) > 0 }
}
output "core_capture_filters_freeform_tags" {
  description = "Map of freeform_tags values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_capture_filters_state" {
  description = "Map of state values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no state are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_capture_filters_time_created" {
  description = "Map of time_created values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no time_created are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_capture_filters_vtap_capture_filter_rules" {
  description = "Map of vtap_capture_filter_rules values across all core_capture_filters, keyed the same as var.core_capture_filters except keys with no vtap_capture_filter_rules are omitted"
  value       = { for k, v in oci_core_capture_filter.core_capture_filters : k => v.vtap_capture_filter_rules if v.vtap_capture_filter_rules != null && length(v.vtap_capture_filter_rules) > 0 }
}

