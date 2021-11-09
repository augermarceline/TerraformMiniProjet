terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "terraform-backend-marceline"
    key    = "./terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2module" {
  source = "./Module/ec2"

  taille_ec2 = "t2.nano"
  tag_ec2 = {
    Name      = "ec2-dev-marceline"
  }
  sg_name      = "marceline_sg_dev"
  keyname_type = "devops-marceline"
}