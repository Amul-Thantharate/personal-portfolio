terraform {
    required_version = ">= 0.13"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 3.0.0"
        }
    }
    backend "s3" {
        bucket = "terraform-backend-bucket-12"
        key    = "Project/terraform.tfstate"
        region = "ap-northeast-1"
    }
}

provider "aws" {
    region = "ap-northeast-1"
}