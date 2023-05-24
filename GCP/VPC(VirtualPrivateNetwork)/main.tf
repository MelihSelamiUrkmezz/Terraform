resource "google_compute_network" "auto-vpc" {
  name = "auto-vpc-tf"
  auto_create_subnetworks = true
  mtu = 1460
}

resource "google_compute_network" "custom-vpc" {
  name="custom-vpc-tf"
  auto_create_subnetworks = false
  mtu = 1460
}

resource "google_compute_subnetwork" "custom-vpc-subnet" {
  name="europe-subnet"
  network = google_compute_network.custom-vpc.id
  ip_cidr_range = "10.1.0.0/24"
  region = "europe-west1"
  private_ip_google_access = true
}

resource "google_compute_firewall" "custom-vpc-fw" {
  name="allow-80"
  network = google_compute_network.custom-vpc.id
  allow {
    protocol = "TCP"
    ports = ["80"]
  }
  priority = 1001
  source_ranges = ["0.0.0.0"]
}