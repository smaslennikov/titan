# Colossus NAT Module - Cloud NAT Router

variable "nat_ip_allocate_option" { default = "AUTO_ONLY" }
variable "nat_ips" { default = [] }
variable "source_subnetwork_ip_ranges_to_nat" { default = "ALL_SUBNETWORKS_ALL_IP_RANGES" }
variable "min_ports_per_vm" { default = "64" }
variable "udp_idle_timeout_sec" { default = "30" }
variable "icmp_idle_timeout_sec" { default = "30" }
variable "tcp_established_idle_timeout_sec" { default = "1200" }
variable "tcp_transitory_idle_timeout_sec" { default = "30" }
variable "log_config_filter" { default = "" }
variable "log_config_enable" { default = false }

output "name" { value = "${google_compute_router_nat.default.name}" }

resource "google_compute_router_nat" "default" {
  name                               = "nat"

  router                             = "${google_compute_router.default.name}"
  region                             = "${var.region}"

  nat_ip_allocate_option             = "${var.nat_ip_allocate_option}"
  nat_ips                            = "${var.nat_ips != "" ? var.nat_ips : "" }"

  # TODO: support the subnetwork block, allowing for this router to only NAT certain subnetworks
  source_subnetwork_ip_ranges_to_nat = "${var.source_subnetwork_ip_ranges_to_nat}"

  min_ports_per_vm                   = "${var.min_ports_per_vm}"
  udp_idle_timeout_sec               = "${var.udp_idle_timeout_sec}"
  icmp_idle_timeout_sec              = "${var.icmp_idle_timeout_sec}"
  tcp_established_idle_timeout_sec   = "${var.tcp_established_idle_timeout_sec}"
  tcp_transitory_idle_timeout_sec    = "${var.tcp_transitory_idle_timeout_sec}"

  log_config {
    filter                           = "${var.log_config_filter}"
    enable                           = "${var.log_config_enable}"
  }
}
