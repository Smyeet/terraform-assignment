
mock "tfplan/v2" {
  data = {
    resource_changes = {
      "aws_instance.example" = {
        type = "aws_instance"
        mode = "managed"

        change = {
          after = {
            instance_type = "m5.24xlarge"

            metadata_options = [
              {
                http_tokens = "optional"
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
