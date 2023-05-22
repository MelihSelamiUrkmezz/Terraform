resource local_file new_file {
  sensitive_content = var.dict["name"]
  filename             = var.filename
}
