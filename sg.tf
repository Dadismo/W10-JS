## Security group FOR OUR Application Load Balancer

resource "aws_security_group" "sg-LB" {
  name        = "LB-sg-dev"
  description = "Allow http"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description = "allow http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    env = "Dev"
  }
}

## Security group FOR OUR EC2 instance accespting traffic on port 80 only if it comes from the LB sg

resource "aws_security_group" "EC2" {
  name        = "EC2-sg-dev"
  description = "Allow http"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description     = "allow http"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.sg-LB.id]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    env = "Dev"
  }

}