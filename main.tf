resource "oci_core_capture_filter" "core_capture_filters" {
  for_each = var.core_capture_filters

  compartment_id = each.value.compartment_id
  filter_type    = each.value.filter_type
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags

  dynamic "flow_log_capture_filter_rules" {
    for_each = each.value.flow_log_capture_filter_rules != null ? each.value.flow_log_capture_filter_rules : []
    content {
      destination_cidr = flow_log_capture_filter_rules.value.destination_cidr
      flow_log_type    = flow_log_capture_filter_rules.value.flow_log_type
      dynamic "icmp_options" {
        for_each = flow_log_capture_filter_rules.value.icmp_options != null ? [flow_log_capture_filter_rules.value.icmp_options] : []
        content {
          code = icmp_options.value.code
          type = icmp_options.value.type
        }
      }
      is_enabled    = flow_log_capture_filter_rules.value.is_enabled
      priority      = flow_log_capture_filter_rules.value.priority
      protocol      = flow_log_capture_filter_rules.value.protocol
      rule_action   = flow_log_capture_filter_rules.value.rule_action
      sampling_rate = flow_log_capture_filter_rules.value.sampling_rate
      source_cidr   = flow_log_capture_filter_rules.value.source_cidr
      dynamic "tcp_options" {
        for_each = flow_log_capture_filter_rules.value.tcp_options != null ? [flow_log_capture_filter_rules.value.tcp_options] : []
        content {
          dynamic "destination_port_range" {
            for_each = tcp_options.value.destination_port_range != null ? [tcp_options.value.destination_port_range] : []
            content {
              max = destination_port_range.value.max
              min = destination_port_range.value.min
            }
          }
          dynamic "source_port_range" {
            for_each = tcp_options.value.source_port_range != null ? [tcp_options.value.source_port_range] : []
            content {
              max = source_port_range.value.max
              min = source_port_range.value.min
            }
          }
        }
      }
      dynamic "udp_options" {
        for_each = flow_log_capture_filter_rules.value.udp_options != null ? [flow_log_capture_filter_rules.value.udp_options] : []
        content {
          dynamic "destination_port_range" {
            for_each = udp_options.value.destination_port_range != null ? [udp_options.value.destination_port_range] : []
            content {
              max = destination_port_range.value.max
              min = destination_port_range.value.min
            }
          }
          dynamic "source_port_range" {
            for_each = udp_options.value.source_port_range != null ? [udp_options.value.source_port_range] : []
            content {
              max = source_port_range.value.max
              min = source_port_range.value.min
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vtap_capture_filter_rules" {
    for_each = each.value.vtap_capture_filter_rules != null ? each.value.vtap_capture_filter_rules : []
    content {
      destination_cidr = vtap_capture_filter_rules.value.destination_cidr
      dynamic "icmp_options" {
        for_each = vtap_capture_filter_rules.value.icmp_options != null ? [vtap_capture_filter_rules.value.icmp_options] : []
        content {
          code = icmp_options.value.code
          type = icmp_options.value.type
        }
      }
      protocol    = vtap_capture_filter_rules.value.protocol
      rule_action = vtap_capture_filter_rules.value.rule_action
      source_cidr = vtap_capture_filter_rules.value.source_cidr
      dynamic "tcp_options" {
        for_each = vtap_capture_filter_rules.value.tcp_options != null ? [vtap_capture_filter_rules.value.tcp_options] : []
        content {
          dynamic "destination_port_range" {
            for_each = tcp_options.value.destination_port_range != null ? [tcp_options.value.destination_port_range] : []
            content {
              max = destination_port_range.value.max
              min = destination_port_range.value.min
            }
          }
          dynamic "source_port_range" {
            for_each = tcp_options.value.source_port_range != null ? [tcp_options.value.source_port_range] : []
            content {
              max = source_port_range.value.max
              min = source_port_range.value.min
            }
          }
        }
      }
      traffic_direction = vtap_capture_filter_rules.value.traffic_direction
      dynamic "udp_options" {
        for_each = vtap_capture_filter_rules.value.udp_options != null ? [vtap_capture_filter_rules.value.udp_options] : []
        content {
          dynamic "destination_port_range" {
            for_each = udp_options.value.destination_port_range != null ? [udp_options.value.destination_port_range] : []
            content {
              max = destination_port_range.value.max
              min = destination_port_range.value.min
            }
          }
          dynamic "source_port_range" {
            for_each = udp_options.value.source_port_range != null ? [udp_options.value.source_port_range] : []
            content {
              max = source_port_range.value.max
              min = source_port_range.value.min
            }
          }
        }
      }
    }
  }
}

