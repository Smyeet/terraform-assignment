mock "tfplan/v2" {
  data = {
    resource_changes = {
      "aws_security_group.ec2_security" = {
        type = "aws_security_group"
        mode = "managed"

        change = {
          after = {
            ingress = []
          }
        }
      }
    }
  }
}

test {
  rules = {
    main = true
  }
}
