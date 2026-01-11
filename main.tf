provider "aws" {
  access_key = "AKIAIOSFODNN7EXAMPLE"
  region     = "us-west-1"
}

resource "local_file" "npmrc" {
  content  = "no"
  filename = ".npmrc"
}
