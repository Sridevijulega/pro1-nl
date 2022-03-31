resource "aws_security_group" "pronl-sg" {
  name          = "${var.environment}-pronl-sg"
  description   = "Security group for pronl servers"
  vpc_id        = module.vpc.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    self        = "false"
  }

  ingress {
    cidr_blocks = ["0.0.0./0"]
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    self        = "false"
  }

  ingress {
    cidr_blocks = ["3.108.218.130/32"]
    from_port   = "8080"
    to_port     = "8080"
    protocol    = "tcp"
    self        = "false"
  }

  tags = {
      name = "${var.environment}-pronl-sg"
  }