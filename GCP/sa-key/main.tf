terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.65.2"
    }
  }
}

provider "google" {
  project = "terraform-gcp-387515"
  region = "us-central1"
  zone = "us-central1-a"  
  credentials = "keys.json"
  }

  resource "google_storage_bucket" "GCS" {
    name="melih-selami-urkmez-2"
    location = "us-central1"
  }