resource "aws_eip" "lb" {
  #instance = aws_instance.web_ec2.id
  vpc = true
  #provisioner local: get ip
  provisioner "local-exec" {
    command = "echo ${aws_instance.web_ec2.public_ip} >> infos_ec2.txt"
  }
  tags = var.ec2_tag
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.web_ec2.id
  allocation_id = aws_eip.lb.id
}