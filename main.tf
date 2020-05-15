resource "aws_instance" "myec2" {
  ami = "ami-050d581a8c1d4a570"
  instance_type = "t2.micro"
  key_name = "my-key"
}
resource "aws_security_group" "web_sg" {
    name = "web_sg"
    ingress {
        to_port     = 22
        from_port   = 22
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  egress {
        to_port     = 22
        from_port   = 22
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        to_port     = 8080
        from_port   = 8080
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  } 
  egress {
        to_port     = 8080
        from_port   = 8080
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
}

  
