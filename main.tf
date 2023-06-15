# Configure the AWS Provider
provider "aws" {
  region = var.region
}


#Create EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  availability_zone      = "us-east-1a"
  key_name               = var.pem //comment / delete this if you do not want ssh access
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file("user_data.tpl")

  tags = {
    Name = "Web App Server"
  }

}

resource "aws_instance" "webserver2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  availability_zone      = "us-east-1b"
  key_name               = var.pem //comment / delete this if you do not want ssh access
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data              = file("user_data.tpl")

  tags = {
    Name = "Web App Server"
  }

}


