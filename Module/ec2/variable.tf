variable "taille_ec2" {
  default = "t2.nano"
}

variable "key_name" {
  type = string
}

variable "tag_ec2" {
  type = map(any)
  default = {
    Name      = "ec2-marceline"
  }
}

variable "key_path" {
  type = string
}