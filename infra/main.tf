resource "aws_security_group" "allow_ssh" {
  vpc_id = aws_vpc.main.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  count           = var.create_instance ? 1 : 0
  ami             = var.instance_ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.public.id
  vpc_security_group_ids =   [aws_security_group.allow_ssh.id]
  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}