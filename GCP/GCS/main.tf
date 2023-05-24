resource "google_storage_bucket" "GCS" {
    name=var.bucket_name
    location = var.region
    storage_class = "NEARLINE"
    uniform_bucket_level_access = true

    labels = {
     "object" = "bucket",
     "env" = "prod" 
    }
}

resource "google_storage_bucket_object" "GCS_OBJECT" {

    name="example"
    source="image.jpg"
    bucket = google_storage_bucket.GCS.name
}