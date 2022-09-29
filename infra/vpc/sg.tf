# ALB SG
resource "aws_security_group" "global_sg" {
  name        = "hands-on-global-sg"
  description = "Global SG"
  vpc_id      = aws_vpc.main.id
  #Ingress
  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
