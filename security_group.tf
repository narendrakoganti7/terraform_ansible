resource "aws_security_group" "serviceSG" {
  name        = "serviceSG"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0b454e63"

  ingress {

    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {

    description = "all ports"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "all ports"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "open world"
  }
}