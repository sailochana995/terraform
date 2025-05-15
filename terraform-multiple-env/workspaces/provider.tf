  terraform {
            
     required_providers {
     aws = {
     source = "hashicorp/aws"
     version = "5.94.1"
   }
     }

      backend "s3" { 
            bucket = "remotestate-82s-prod"
            key = "workspace-demo"
            region = "us-east-1"
            dynamodb_table = "remotestate-82s-Prod"

    }   
                        
                    
    }

     provider "aws" {
                        
     region = "us-east-1" 

   }