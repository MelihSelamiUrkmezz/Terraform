resource local_file sample_res {
  sensitive_content = "I love Terraform."
  filename             = "sample.txt"
  file_permission = "0700"
}
