mock "tfconfig/v2" {
  data = {
    providers = {
      "aws" = {
        name               = "aws"
        full_name          = "registry.terraform.io/untrusted/aws"
        version_constraint = ""
      }
    }

    module_calls = {
      "vpc" = {
        name               = "vpc"
        source             = "untrusted/vpc/aws"
        version_constraint = ""
      }
    }
  }
}

test {
  rules = {
    main = false
  }
}
