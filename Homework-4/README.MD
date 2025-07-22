region = "us-west-2"

key_name = "my-key"

igw = "my-igw"


vpc = [{cidr = "10.0.0.0/16", dns_hostnames = true, dns_support = true}]


route_table = ["public-rt", "private-rt"]

port = [22, 80, 443, 3306]

ec2_web = {
  ami_id_1         = "ami-0be5f59fbc80d980c"
  instance_type_1  = "t2.micro"
  ami_id_2         = "ami-0ec1bf4a8f92e7bd1"
  instance_type_2  = "t3.micro"
}

subnet = [
    {cidr = "10.0.1.0/24",  az = "us-west-2a", get_public_ip = true,  name = "public-subnet1"},
    {cidr = "10.0.2.0/24", az = "us-west-2b", get_public_ip = true,  name = "public-subnet2"},
    {cidr = "10.0.3.0/24", az = "us-west-2c", get_public_ip = false, name = "private-subnet1"},
    {cidr = "10.0.4.0/24", az = "us-west-2d", get_public_ip = false, name = "private-subnet2"},
]