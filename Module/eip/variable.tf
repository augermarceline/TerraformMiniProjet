
variable "ec2_tag" {
  type = map(any)
  default = {
    Name = "ec2_marceline"
  }
}