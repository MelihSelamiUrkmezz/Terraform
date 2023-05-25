variable "project_id" {
    type = string
    default = "terraform-gcp-387515"
}
variable "key" {
    type = string
    default = "keys.json"
}
variable "region" {
    type = string
    default = "us-central1"
}
variable "zone" {
    type = string
    default = "europe-west1-c"
}
variable "sa" {
    type = string
    default = "gcp-terraform-sa@terraform-gcp-387515.iam.gserviceaccount.com"
  
}