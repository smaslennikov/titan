# Titan NAT Module - Cloud NAT Module Outputs - Router

output "router_name" { value = "${google_compute_router.name}" }
output "router_description" { value = "${google_compute_router.description}" }
