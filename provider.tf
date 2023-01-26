terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.48.0"
    }
  }

  ## Terrafrom Cloud Integration ##
  cloud {
    organization = "test-pradeep"
    workspaces {
      name = "prod"
    }
  }

}