
variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "eu-west-1"
}

# AMI for the EC2 instance
variable "ami_id" {
  description = "AMI ID used for the EC2 instance"
  type        = string
}

# EC2 instance type
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.micro"
}

# EBS encryption
variable "ebs_encrypted" {
  description = "Enable or disable EBS encryption"
  type        = bool
  default     = true
}
