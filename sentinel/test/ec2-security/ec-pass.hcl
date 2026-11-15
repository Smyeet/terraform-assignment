
mock "tfplan/v2" {
  data = {
    resource_changes = {
      "aws_instance.example" = {
        type = "aws_instance"
        mode = "managed"

        change = {
          after = {
            instance_type = "t3.micro"

            metadata_options = [
              {
                http_tokens = "required"
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
