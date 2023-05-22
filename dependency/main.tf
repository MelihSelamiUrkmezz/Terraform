resource local_file dogs {
  sensitive_content = "I love dogs ${random_string.str.id}"
  filename             = "dogs.txt"
  depends_on=[random_string.str]
}
resource random_string str {
  length  = 10
  upper   = true
  lower   = true
  number  = true
  special = true
}
