resource "aws_instance" "PublicWebTemplate" {
  ami                    = "ami-005e54dee72cc1d00"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public-web-subnet-1.id
  vpc_security_group_ids = [aws_security_group.webserver-security-group.id]
  key_name               = "demo"
  user_data              = file("install-apache.sh")

  tags = {
    Name = "Web"
  }
}

resource "aws_instance" "Private-app-template" {
  ami                    = "ami-005e54dee72cc1d00"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private-app-subnet-1.id
  vpc_security_group_ids = [aws_security_group.ssh-security-group.id]
  key_name               = "demo"


  tags = {
    Name = "app"
  }
}

