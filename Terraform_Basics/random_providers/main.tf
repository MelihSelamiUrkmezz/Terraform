resource random_integer rint {
  min = 0
  max = 70
}
resource random_string rstring {
  length  = 15
  upper   = true
  lower   = true
  number  = true
  special = true
}


output random_number {
  value       = random_integer.rint.result
  description = "Generated random value"
}
output random_string {
  value = random_string.rstring.result
  description = "Generated random string" 
}
