// terraform ec2 module

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id = var.sub_id


  tags = {
    Name = "demo_ec2"
  }
}



