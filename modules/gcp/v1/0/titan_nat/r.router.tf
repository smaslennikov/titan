# Titan NAT Module - Router

resource "google_compute_router" "default" {
  name                               = "router"
  description = "Titan Network Router"

  network = "${var.network}"
  region = "${var.region}"

  bgp {
    asn = "${var.asn}"
    # TODO: Allow for custom advertising modes
    advertise_mode = "DEFAULT"
  }
}
