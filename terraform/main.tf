
resource "aws_instance" "example" {
  ami                    = var.ami_id
  instance_type          = "t3.large" #var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_security.id]

  # IMDSv2 for instance metadata
  metadata_options {
    http_tokens = "required"
  }

  # Encrypting the root EBS volume
  root_block_device {
    encrypted = false #var.ebs_encrypted
  }

  tags = {
    Name         = "Sovereignty-EC2"
    Organisation = "ATU_DevOps"
    Environment  = "Development"
    ManagedBy    = "Terraform"
  }
}
