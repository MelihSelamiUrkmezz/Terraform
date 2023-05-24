resource "google_storage_bucket" "GCS" {
    name=var.bucket_name
    location = var.region
    storage_class = "NEARLINE"
    uniform_bucket_level_access = true

    labels = {
     "object" = "bucket",
     "env" = "prod" 
    }

    lifecycle_rule {
        action {
          type = "SetStorageClass"
          storage_class = "COLDLINE"
        }
        condition {
          age=5
        }
    }
    retention_policy {
      is_locked = true
      retention_period = 86400
    }
}

resource "google_storage_bucket_object" "GCS_OBJECT" {

    name="example"
    source="image.jpg"
    bucket = google_storage_bucket.GCS.name
}