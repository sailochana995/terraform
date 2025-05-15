        terraform {
          required_providers {
            aws = {
              source = "hashicorp/aws"
              version = "5.94.1"
            }
          }     

               
        backend "s3" {
        bucket = "chandana99"
        key = "expense-backend-infra"
        region = "us-east-1"
        dynamodb_table = "devopps-82s"


}



}

          provider "aws" {
          
          region = "us-east-1" 

}
