variable "sg_name" {
  default = "sg_marceline"
}

variable "sg_tag" {
  type = map(any)
  default = {
    Name = "sg_marceline"
  }
}
#test
