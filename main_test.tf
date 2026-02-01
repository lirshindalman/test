resource "local_file" "npmrc" {
  content  = "no"
  filename = ".npmrc"
}

provider "aws" {
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "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"
  region     = "us-west-1"
}
