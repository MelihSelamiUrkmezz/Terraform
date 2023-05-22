resource local_file cat_file {
  sensitive_content = "I love cats."
  filename             = "cat.txt"
}
resource local_file dog_file {
  sensitive_content = "I love dogs."
  filename             = "dogs.txt"
}

