output "autopilot_health_lookup_id" {
  description = "Map of id values across all autopilot_health_lookup, keyed the same as var.autopilot_health_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_autopilot_health.autopilot_health_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "autopilot_health_lookup_datacenter" {
  description = "Map of datacenter values across all autopilot_health_lookup, keyed the same as var.autopilot_health_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_autopilot_health.autopilot_health_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "autopilot_health_lookup_failure_tolerance" {
  description = "Map of failure_tolerance values across all autopilot_health_lookup, keyed the same as var.autopilot_health_lookup except keys with no failure_tolerance are omitted"
  value       = { for k, v in data.consul_autopilot_health.autopilot_health_lookup : k => v.failure_tolerance if v.failure_tolerance != null }
}
output "autopilot_health_lookup_healthy" {
  description = "Map of healthy values across all autopilot_health_lookup, keyed the same as var.autopilot_health_lookup except keys with no healthy are omitted"
  value       = { for k, v in data.consul_autopilot_health.autopilot_health_lookup : k => v.healthy if v.healthy != null }
}
output "autopilot_health_lookup_servers" {
  description = "Map of servers values across all autopilot_health_lookup, keyed the same as var.autopilot_health_lookup except keys with no servers are omitted"
  value       = { for k, v in data.consul_autopilot_health.autopilot_health_lookup : k => v.servers if v.servers != null && length(v.servers) > 0 }
}

