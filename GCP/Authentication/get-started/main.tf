terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.65.2"
    }
  }
}

provider "google" {
  project = ""
  region = "us-central1"
  zone = "us-central1-a"
}

resource "google_storage_bucket" "create_bucket" {
    name="melih-selami-urkmez"
    location="us-central1"
}

