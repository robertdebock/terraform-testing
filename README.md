# Testing

This repository uses the [testing experiment](https://www.terraform.io/language/modules/testing-experiment).

## Running tests

1. `terraform apply`. (This should be included while running `terraform test`, but so far we can't get that to work.)
2. `terraform test`. This also runs `terraform destroy`, as documented.
