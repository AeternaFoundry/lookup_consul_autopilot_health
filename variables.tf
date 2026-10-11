variable "autopilot_health_lookup" {
  description = <<EOT
Map of autopilot_health_lookup, attributes below
Optional:
    - datacenter
EOT

  type = map(object({
    datacenter = optional(string)
  }))
}

