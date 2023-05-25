resource "google_compute_instance" "create-gce" {
  name="gce-tf"
  machine_type = "n1-standard-2"
  zone=var.zone
  allow_stopping_for_update = true

network_interface {
  network = "custom-vpc-tf"
  subnetwork = "europe-subnet"
}

boot_disk {
    initialize_params {
      image="ubuntu-2204-jammy-v20230524"
      size=20
    }
    auto_delete = true
  }
scheduling {
  preemptible = true
  automatic_restart = false
}

service_account {
  email = var.sa
  scopes = ["cloud-platform"]
}

labels = {
"object" = "gce"
}
  
}

resource "google_compute_disk" "gce-disk" {
  name = "gce-extra-disk"
  size=20
  type = "pd-standard"
  zone=var.zone
    labels = {
    "object" = "disc"
  }
}

resource "google_compute_attached_disk" "attached-disk" {
  disk = google_compute_disk.gce-disk.id
  instance = google_compute_instance.create-gce.id
}