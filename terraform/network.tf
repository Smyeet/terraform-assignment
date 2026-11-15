resource "aws_security_group" "ec2_security" {
  name        = "sovereignty-ec2-security"
  description = "Security group for EC2"

# Intentionally insecure rule for Sentinel testing
ingress {
  description = "TEST ONLY - unrestricted SSH access"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1" # indicating only VPC communication
  }

  tags = {
    Name         = "Sovereignty-SecurityGroup"
    Organisation = "ATU-DevOps"
  }
}