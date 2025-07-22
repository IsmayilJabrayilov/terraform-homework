resource "aws_instance" "instance1" {
  ami = var.ec2_web["ami_id_1"]
  instance_type = var.ec2_web["instance_type_1"]
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = local.local_tags
}

resource "aws_instance" "instance2" {
  ami = var.ec2_web["ami_id_2"]
  instance_type = var.ec2_web["instance_type_2"]
  subnet_id = aws_subnet.public2.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = local.local_tags
}