variable "size_ebs" {
  type    = number
  default = 10
}

variable "tag_ec2" {
  type = map(any)
  default = {
    Name      = "ec2-marceline"
  }
}

variable "instance_id" {
  default = ""
}