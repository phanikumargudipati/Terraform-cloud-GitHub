terraform {
    required_version = "~> 1.15.6" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.49.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Phaniinfra" {
	ami = "ami-00e801948462f718a" 
	instance_type = "t3.micro"
tags={
Name= "gudipati_phani_server"
}
}
