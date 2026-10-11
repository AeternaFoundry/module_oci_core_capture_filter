variable "core_capture_filters" {
  description = <<EOT
Map of core_capture_filters, attributes below
Required:
    - compartment_id
    - filter_type
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - flow_log_capture_filter_rules (block):
        - destination_cidr (optional)
        - flow_log_type (optional)
        - icmp_options (optional, block):
            - code (optional)
            - type (required)
        - is_enabled (optional)
        - priority (optional)
        - protocol (optional)
        - rule_action (optional)
        - sampling_rate (optional)
        - source_cidr (optional)
        - tcp_options (optional, block):
            - destination_port_range (optional, block):
                - max (required)
                - min (required)
            - source_port_range (optional, block):
                - max (required)
                - min (required)
        - udp_options (optional, block):
            - destination_port_range (optional, block):
                - max (required)
                - min (required)
            - source_port_range (optional, block):
                - max (required)
                - min (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vtap_capture_filter_rules (block):
        - destination_cidr (optional)
        - icmp_options (optional, block):
            - code (optional)
            - type (required)
        - protocol (optional)
        - rule_action (optional)
        - source_cidr (optional)
        - tcp_options (optional, block):
            - destination_port_range (optional, block):
                - max (required)
                - min (required)
            - source_port_range (optional, block):
                - max (required)
                - min (required)
        - traffic_direction (required)
        - udp_options (optional, block):
            - destination_port_range (optional, block):
                - max (required)
                - min (required)
            - source_port_range (optional, block):
                - max (required)
                - min (required)
EOT

  type = map(object({
    compartment_id = string
    filter_type    = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    flow_log_capture_filter_rules = optional(list(object({
      destination_cidr = optional(string)
      flow_log_type    = optional(string)
      icmp_options = optional(object({
        code = optional(number)
        type = number
      }))
      is_enabled    = optional(bool)
      priority      = optional(number)
      protocol      = optional(string)
      rule_action   = optional(string)
      sampling_rate = optional(number)
      source_cidr   = optional(string)
      tcp_options = optional(object({
        destination_port_range = optional(object({
          max = number
          min = number
        }))
        source_port_range = optional(object({
          max = number
          min = number
        }))
      }))
      udp_options = optional(object({
        destination_port_range = optional(object({
          max = number
          min = number
        }))
        source_port_range = optional(object({
          max = number
          min = number
        }))
      }))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vtap_capture_filter_rules = optional(list(object({
      destination_cidr = optional(string)
      icmp_options = optional(object({
        code = optional(number)
        type = number
      }))
      protocol    = optional(string)
      rule_action = optional(string)
      source_cidr = optional(string)
      tcp_options = optional(object({
        destination_port_range = optional(object({
          max = number
          min = number
        }))
        source_port_range = optional(object({
          max = number
          min = number
        }))
      }))
      traffic_direction = string
      udp_options = optional(object({
        destination_port_range = optional(object({
          max = number
          min = number
        }))
        source_port_range = optional(object({
          max = number
          min = number
        }))
      }))
    })))
  }))
}

