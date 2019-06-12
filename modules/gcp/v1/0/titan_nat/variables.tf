# Titan Network Module - Cloud NAT Module Variables

# google_compute_router_nat options
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

# google_compute_router options
variable "network" {}
variable "asn" { default = "65000" }

# shared options
variable "region" {}
