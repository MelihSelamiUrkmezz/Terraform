resource local_file create_file {
  sensitive_content = "I love dogs."
  filename             = "sample.txt"
}

resource random_string name_generator {
  length  = 15
  upper   = true
  lower   = true
  number  = true
  special = true
}

