# Colossus NAT Module - Router

variable "network" {}
variable "asn" { default = "65000" }

output "name" { value = "${google_compute_router.default.name}" }
output "description" { value = "${google_compute_router.default.description}" }

resource "google_compute_router" "default" {
  name = "router"
  description = "Colossus Network Router"

  network = "${var.network}"
  region = "${var.region}"

  bgp {
    asn = "${var.asn}"
    # TODO: Allow for custom advertising modes
    advertise_mode = "DEFAULT"
  }
}
