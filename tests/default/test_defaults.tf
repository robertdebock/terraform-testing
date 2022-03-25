terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }
  }
}

# The module must be called `main`.
module "main" {
  source = "../.."
  # Variables are not passed from here to the use module.
  text   = "Will not be passed to the used module!"
}

resource "test_assertions" "my_local_file" {
  component = "my_file_checks"

  check "my_check_if_file_exists" {
    description = "The file exists."
    condition   = fileexists("foo.bar")
  }

  check "my_check_if_file_contains_pattern" {
    description = "The file contains a specific pattern"
    condition   = file("foo.bar") == "Hello world!"
  }
}
