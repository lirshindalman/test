provider "aws" {
  region     = "us-west-1"
}

resource "local_file" "npmrc" {
  content  = "no"
  filename = ".npmrc"
}
