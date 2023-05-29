resource "google_storage_bucket" "source-code-bucket" {
  name = "fastapi-sourcecode-storage"
  location = var.region
}

resource "google_storage_bucket_object" "source-code" {
  name = "main.zip"
  source = "main.zip"
  bucket = google_storage_bucket.source-code-bucket.name
}

resource "google_cloudfunctions_function" "CF-tf" {
  name = "fastapi-cloudfunc"
  runtime = "python311"
  source_archive_bucket = google_storage_bucket.source-code-bucket.name
  source_archive_object = google_storage_bucket_object.source-code.name
  trigger_http = true
  entry_point = "process"
}

resource "google_cloudfunctions_function_iam_member" "cf-public-access" {
  project = var.project_id
  region = var.region
  cloud_function = google_cloudfunctions_function.CF-tf.name
  role = "roles/cloudfunctions.invoker"
  member = "allUsers"
}