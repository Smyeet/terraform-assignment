mock "tfplan/v2" {
  data = {
    variables = {
      aws_region = {
        value = "us-east-1"
      }
    }
  }
}

test {
  rules = {
    main = false
  }
}
