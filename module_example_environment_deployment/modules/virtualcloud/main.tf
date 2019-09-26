provider "google" {
  project = "vm-test-204406"
  region  = "us-central1"
}

resource "google_compute_network" "vpccloud-network" {
  name    = "vpccloud-network-${var.environment}"
  auto_create_subnetworks  =  "false"
}

resource "google_compute_subnetwork" "vpccloud_subnetwork" {
  name    =  "${var.environment}-vpccloud-subnetwork"
  region  =  "${var.region}"
  #network = "${var.environment == "dev" ? "${google_compute_network.vpccloud-network.self_link}" : "null"}"
#  network =  "${google_compute_network.vpccloud-network-"${var.environment}"}.self_link"
network = "${google_compute_network.vpccloud-network.self_link}"

  ip_cidr_range  = "${var.ipv4_range}"
}
