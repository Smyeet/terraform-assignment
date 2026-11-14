resource "aws_security_group" "ec2_security" {
  name        = "sovereignty-ec2-security"
  description = "Security group for EC2"

  ingress = [] # not required as we would not be keeping this open to public but to the VPC

  egress = [
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"] 
    protocol = "-1" # indicating only VPC communication
  ]

  tags = {
    Name         = "Sovereignty-SecurityGroup"
    Organisation = "ATU-DevOps"
  }
}