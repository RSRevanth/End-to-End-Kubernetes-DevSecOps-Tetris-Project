terraform {
  backend "s3" {
    bucket         = "robo-remote-state1"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "roboshop-locking1"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
