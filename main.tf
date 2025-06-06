terraform {
  required_version = ">= 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }

  }
  backend "s3" {
    bucket = "demo-usecases-bucket-new"
    key    = "usecase-06/lambda.tftstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = "ap-south-1"
}

module "ec2_scheduler" {
  source         = "./modules/ec2-scheduler"
  instance_id    = var.instance_id
  start_schedule = var.start_schedule # 8 AM weekdays
  stop_schedule  = var.stop_schedule  # 5 PM weekdays
  name_prefix    = var.name_prefix
}