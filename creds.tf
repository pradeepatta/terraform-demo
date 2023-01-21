provider "aws" {
  #shared_credentials_file = "/root/.aws/credentials"
  #shared_credentials_file = "$HOME/.aws/credentials"
  profile = "arbutus-test"
  #access_key = "AKIA3GG2C5MGQS6OLAFI"
  #secret_key = "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"
  region = var.region
}