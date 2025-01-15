resource "aws_instance" "public_web_server" {
  ami                    = "ami-06b21ccaeff8cd686"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.public_web_server.id] # Use 'id' instead of 'name' dummy
       

  user_data = file("./scripts/startup.sh")

  tags = {
    Name = "public-web-server-1"
    env  = "prod"
  }

}


