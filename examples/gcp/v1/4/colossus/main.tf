# Colossus Example for GCP
variable region { default = "us-central1" }

provider "google" {
  region = var.region
}

provider "google-beta" {
  region = var.region
}

data "google_compute_zones" "available" {
}

module "network" {
  source = "../../../../../modules/gcp/v0/4/colossus_network"

  providers = {
    google = google-beta
  }

  id         = "0"
  domain     = "gcp.mycompany.com"
  name       = "development"
  name_short = "dev"
  name_fancy = "Development"

  # up to 2Gbit/s unidirectional per core, n1-standard-1 is one core
  nat_instance_type = "n1-standard-1"

  # run two NAT gateways per AZ rather than one
  nat_zonal_high_availability = true
}

terraform {
  required_version = ">= 0.12"
}
