# Titan Network Module - Cloud NAT Module Outputs

output "nat_ip_allocate_option" { value = "${var.nat_ip_allocate_option}" }
output "nat_ips" { value = "${var.nat_ips}" }
output "source_subnetwork_ip_ranges_to_nat" { value = "${var.source_subnetwork_ip_ranges_to_nat}" }
output "min_ports_per_vm" { value = "${var.min_ports_per_vm}" }
output "udp_idle_timeout_sec" { value = "${var.udp_idle_timeout_sec}" }
output "icmp_idle_timeout_sec" { value = "${var.icmp_idle_timeout_sec}" }
output "tcp_established_idle_timeout_sec" { value = "${var.tcp_established_idle_timeout_sec}" }
output "tcp_transitory_idle_timeout_sec" { value = "${var.tcp_transitory_idle_timeout_sec}" }
output "log_config_filter" { value = "${var.log_config_filter}" }
output "log_config_enable" { value = "${var.log_config_enable}" }

output "network" { value = "${var.network}" }
output "asn" { value = "${var.asn}" }
output "region" { value = "${var.region}" }
