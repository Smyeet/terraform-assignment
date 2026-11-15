
mock "tfplan/v2" {
  data = {
    resource_changes = {
      "aws_instance.example" = {
        type = "aws_instance"
        mode = "managed"
        change = {
          after = {
            root_block_device = [
              {
                encrypted = true
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
    main = true
  }
}
