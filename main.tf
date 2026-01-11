provider "aws" {
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "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"
}

resource "local_file" "npmrc" {
  content  = "no"
  filename = ".npmrc"
}
