mock "tfplan/v2" {
  data = {
    variables = {
      aws_region = {
        value = "eu-west-1"
      }
    }
  }
}

test {
  rules = {
    main = true
  }
}
