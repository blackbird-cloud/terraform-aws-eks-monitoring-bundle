terraform {
  required_providers {
    aws = {
      version = "4.44.0"
      source  = "hashicorp/aws"
    }
    helm = {
      version = "2.7.0"
      source  = "hashicorp/helm"
    }
  }
  required_version = ">= 1"
}
