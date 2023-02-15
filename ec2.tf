# Creating EC2 instances in public subnets
resource "aws_instance" "terra1" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.tom-public-1.id}"
  key_name = "keyname"
  tags = {
    Name = "terra1"
  }
}

resource "aws_instance" "terra2" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.tom-public-2.id}"
  key_name = "keyname"
  tags = {
    Name = "terra2"
  }
}

