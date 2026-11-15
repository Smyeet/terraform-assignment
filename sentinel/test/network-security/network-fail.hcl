
# Test security group with public SSH access

mock "tfplan/v2" {
  data = {
    resource_changes = {
      "aws_security_group.ec2_security" = {
        type = "aws_security_group"
        mode = "managed"

        change = {
          after = {
            ingress = [
              {
                from_port        = 22
                to_port          = 22
                protocol         = "tcp"
                cidr_blocks      = ["0.0.0.0/0"]
                ipv6_cidr_blocks = []
              }
            ]
          }
        }
      }
    }
  }
}

test {
  rules = {
    main = false
  }
}
