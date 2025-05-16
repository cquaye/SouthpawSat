# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
/*resource "google_compute_router" "iowa-router" {
  name    = "iowa-router"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "tokyo-router" {
  name    = "tokyo-router"
  region  = "asia-northeast1"
  network = google_compute_network.prod1.id
}

resource "google_compute_router" "saopaulo-router" {
  name    = "saopaulo-router"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "italy-router" {
  name    = "italy-router"
  region  = "europe-west12"
  network = google_compute_network.main.id
}*/