resource random_string dog {
  length  = 12
  upper   = true
  lower   = true
  number  = true
  special = true

}

output name {
  value       = random_string.dog.id
}
