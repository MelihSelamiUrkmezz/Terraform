resource "google_bigquery_dataset" "ds_from_tf" {
  dataset_id = "bq_from_tf"
}

resource "google_bigquery_table" "tb_from_tf" {
  dataset_id = google_bigquery_dataset.ds_from_tf.dataset_id
  table_id = "table_from_tf" 
}