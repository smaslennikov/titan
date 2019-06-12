# Titan Network Module - Cloud NAT Module Variables

# google_compute_router_nat options
variable "nat_nat_ip_allocate_option" { default = "AUTO_ONLY" }
variable "nat_nat_ips" { default = [] }

variable "nat_source_subnetwork_ip_ranges_to_nat" { default = "ALL_SUBNETWORKS_ALL_IP_RANGES" }

variable "nat_min_ports_per_vm" { default = "64" }
variable "nat_udp_idle_timeout_sec" { default = "30" }
variable "nat_icmp_idle_timeout_sec" { default = "30" }
variable "nat_tcp_established_idle_timeout_sec" { default = "1200" }
variable "nat_tcp_transitory_idle_timeout_sec" { default = "30" }

variable "nat_log_config_filter" { default = "" }
variable "nat_log_config_enable" { default = false }

# google_compute_router options
variable "nat_network" {}
variable "nat_asn" { default = "65000" }

# shared options
variable "nat_region" {}
