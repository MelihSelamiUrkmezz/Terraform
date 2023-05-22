resource local_file new_file {
  sensitive_content = var.tuple[1]
  filename             = var.filename
}
