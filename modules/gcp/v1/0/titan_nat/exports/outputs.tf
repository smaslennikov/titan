# Titan Network Module - Cloud NAT Module Outputs

output "nat_nat_ip_allocate_option" { value = "${var.nat_ip_allocate_option}" }
output "nat_nat_ips" { value = "${var.nat_ips}" }
output "nat_source_subnetwork_ip_ranges_to_nat" { value = "${var.source_subnetwork_ip_ranges_to_nat}" }
output "nat_min_ports_per_vm" { value = "${var.min_ports_per_vm}" }
output "nat_udp_idle_timeout_sec" { value = "${var.udp_idle_timeout_sec}" }
output "nat_icmp_idle_timeout_sec" { value = "${var.icmp_idle_timeout_sec}" }
output "nat_tcp_established_idle_timeout_sec" { value = "${var.tcp_established_idle_timeout_sec}" }
output "nat_tcp_transitory_idle_timeout_sec" { value = "${var.tcp_transitory_idle_timeout_sec}" }
output "nat_log_config_filter" { value = "${var.log_config_filter}" }
output "nat_log_config_enable" { value = "${var.log_config_enable}" }

output "nat_network" { value = "${var.network}" }
output "nat_asn" { value = "${var.asn}" }
output "nat_region" { value = "${var.region}" }
