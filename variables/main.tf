resource local_file new_file {
  sensitive_content = var.content
  filename             = var.filename
}
