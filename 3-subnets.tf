# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.69.10.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "tokyo-01" {
  name                     = "tokyo-01"
  ip_cidr_range            = "10.69.50.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "tokyo-02" {
  name                     = "tokyo-02"
  ip_cidr_range            = "10.69.55.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "saopaulo-01" {
  name                     = "saopaulo-01"
  ip_cidr_range            = "10.69.30.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

/*resource "google_compute_subnetwork" "italy" {
  name                     = "italy"
  ip_cidr_range            = "10.69.80.0/24"
  region                   = "europe-west12"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "italy-02" {
  name                     = "italy-02"
  ip_cidr_range            = "10.69.90.0/24"
  region                   = "europe-west12"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "italy-03" {
  name                     = "italy-03"
  ip_cidr_range            = "10.69.95.0/24"
  region                   = "europe-west12"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

} */