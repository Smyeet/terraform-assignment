
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
                encrypted = false
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
