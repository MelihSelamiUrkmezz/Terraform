terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.65.2"
    }
  }
}

provider "google" {
  project = "<your_project_id>"
  region = "us-central1"
  zone = "us-central1-a"  
  credentials = "<your_sa_key_json>"
  }

  resource "google_storage_bucket" "GCS" {
    name="melih-selami-urkmez-2"
    location = "us-central1"
  }
