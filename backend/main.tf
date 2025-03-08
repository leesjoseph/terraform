terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.0"
        }
    }

    backend "s3" {
        bucket = "demo-terraform-eks-state-slee-bucket"
        key = "terraform.tfstate"
        region = "ap-northeast-2"
        dynamodb_table = "terraform-eks-state-locks"
        encrypt = true
      
    }
}