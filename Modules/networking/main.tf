resource "google_compute_subnetwork" "network-for-l7lb" {
  provider = google-beta

  name          = "l7lb-test-subnetwork-dbar"
  ip_cidr_range = "10.0.0.0/22"
  region        = "us-central1"
  purpose       = "INTERNAL_HTTPS_LOAD_BALANCER"
  role          = "ACTIVE"
  network       = google_compute_network.dawid.id
}

resource "google_compute_network" "dawid" {
  provider = google-beta

  name                    = "l7lb-test-network-dbar"
  auto_create_subnetworks = false
}
