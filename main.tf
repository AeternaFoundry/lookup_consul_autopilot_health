data "consul_autopilot_health" "autopilot_health_lookup" {
  for_each = var.autopilot_health_lookup

  datacenter = each.value.datacenter
}

