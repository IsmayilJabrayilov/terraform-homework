resource "aws_instance" "web1" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  availability_zone = "us-west-2a"
  subnet_id = "subnet-0fb80a7cea681c661"
  key_name = aws_key_pair.bastion.key_name
  vpc_security_group_ids = [aws_security_group.allow.id]
  user_data = file("apache.sh")
  tags = {
    Name = "Web1"
  }
}


resource "aws_instance" "web2" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  availability_zone = "us-west-2c"
  subnet_id = "subnet-02442c5d6f07c3440"
  key_name = aws_key_pair.bastion.key_name
  vpc_security_group_ids = [aws_security_group.allow.id]
  user_data = file("apache.sh")
  tags = {
    Name = "Web2"
  }
}



resource "aws_instance" "web3" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  availability_zone = "us-west-2b"
  subnet_id = "subnet-0f9458c41ed47e7f5"
  key_name = aws_key_pair.bastion.key_name
  vpc_security_group_ids = [aws_security_group.allow.id]
  user_data = file("apache.sh")
  tags = {
    Name = "Web3"
  }
}

