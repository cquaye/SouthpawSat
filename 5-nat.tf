# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
/*resource "google_compute_router_nat" "iowanat" {
  name   = "iowanat"
  router = google_compute_router.iowa-router.name
  region = "us-central1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.hqinternal.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.iowanat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "iowanat" {
  name         = "iowanat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "us-central1"
}

#---------tokyo nat --------------------

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "tokyonat" {
  name   = "tokyonat"
  router = google_compute_router.tokyo-router.name
  region = "asia-northeast1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.tokyo-01.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.tokyonat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "tokyonat" {
  name         = "tokyonat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "asia-northeast1"
}



#---------italy nat --------------------

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
/*resource "google_compute_router_nat" "italynat" {
  name   = "italyonat"
  router = google_compute_router.italy-router.name
  region = "europe-west12"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.italy.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.italynat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "italynat" {
  name         = "italynat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "europe-west12"
}*/