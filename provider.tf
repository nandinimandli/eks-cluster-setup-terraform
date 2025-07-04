locals {
  region = "ap-south-1"
  name   = "cloud1-cluster"
  vpc_cidr = "10.0.0.0/16"
  azs      = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  intra_subnets   = ["10.0.5.0/24", "10.0.6.0/24"]
  tags = {
    Environment = "dev"
  }
}

terraform {
  required_version = ">= 1.3.0"  # 1.8.4 is fine

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"  # ✅ Downgraded for module v19.15.1 compatibility
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
