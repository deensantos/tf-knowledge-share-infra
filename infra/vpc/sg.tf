# ALB SG
resource "aws_security_group" "global_sg" {
  name        = "hands-on-global-sg"
  description = "Global SG"
  vpc_id      = aws_vpc.main.id
  #Ingress
  egress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {Name = "hands-on-global-sg"}
}
