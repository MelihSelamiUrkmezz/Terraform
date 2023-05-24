variable "project_id" {
    type = string
    default = "terraform-gcp-387515"
}
variable "bucket_name"{
    type = string
    default = "msu-bucket-terraform"
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
    default = "us-central1-a"
}