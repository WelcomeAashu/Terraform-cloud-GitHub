terraform {
    required_version = "~> 1.5.7" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Ashishinfra" {
	ami = "ami-0c2b8ca1dad447f8a" 
        count = 2
	instance_type = "t2.micro"
}
