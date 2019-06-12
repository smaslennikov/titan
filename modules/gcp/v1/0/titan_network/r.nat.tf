# Titan Network Module - NAT Resources

module "nat" {
  source = "../titan_nat"

  region = "${var.region}"

  nat_ip_allocate_option = "${var.nat_ip_allocate_option}"
  nat_ips = "${var.nat_ips}"

  source_subnetwork_ip_ranges_to_nat = "${var.source_subnetwork_ip_ranges_to_nat}"

  min_ports_per_vm = "${var.min_ports_per_vm}"
  udp_idle_timeout_sec = "${var.udp_idle_timeout_sec}"
  icmp_idle_timeout_sec = "${var.icmp_idle_timeout_sec}"
  tcp_established_idle_timeout_sec = "${var.tcp_established_idle_timeout_sec}"
  tcp_transitory_idle_timeout_sec = "${var.tcp_transitory_idle_timeout_sec}"

  log_config_filter = "${var.log_config_filter}"
  log_config_enable = "${var.log_config_enable}"

  network = "${var.vpc_id}"
  asn = "${var.asn}"
}
