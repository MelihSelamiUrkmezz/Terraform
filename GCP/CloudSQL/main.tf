resource "google_sql_database_instance" "mysql-from-tf" {
  name = "mysql-from-tf"
  deletion_protection = false
  region = "us-central1"
  database_version = "MYSQL_8_0"
  
  settings {
    tier = "db-f1-micro"
  }

}
resource "google_sql_user" "myuser" {
  name = "msuwashere"
  password = "securepassword"
  instance = google_sql_database_instance.mysql-from-tf.name
}