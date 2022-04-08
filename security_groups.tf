resource "aws_security_group" "my_public_app3_sg" {
  name        = "my_public_app3_sg"
  description = "allow access to the server"
  vpc_id      = data.aws_vpc.main_vpc.id

  #INBOUND CONNECTIONS 
  ingress {
    description = "allow ssh into the ubuntu server"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP into the ubuntu server"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  #OUTBOUND CONNECTIONS
  egress {
    description = "allow acces to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}