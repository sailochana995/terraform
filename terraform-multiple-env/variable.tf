            variable "project" {
                default = "expense"
            }
            variable "environment" {

            }
                variable "instances" {
                    default = ["mysql", "backend", "frontend"]
                    
                }

            variable "zone_id" {
                default = "Z06951323BQNCIM51LI4E"
            }

            variable "domain_name" {
                default = "awsdevops82s.online"
            }


            variable "common_tags" {
                type = map
                default = {
                    Project = "expense"
                    
                    
                }
            }