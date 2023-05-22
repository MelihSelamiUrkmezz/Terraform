variable filename {
  type        = string
  default     = "sample.txt"
}
variable content {
   type = string
   default = "I love coding."
}
variable number {
  type = number
  default = 32
}
variable boolean {
  type = bool
  default = true
}
variable liststr {
  type = list(string)
  default = ["Melih","Ali"]
}
variable tuple {
  type = tuple([number,bool,string])
  default = [12,true,"Melih"]
}


