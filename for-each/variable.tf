variable "instances" {
    type = map 
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable domain_name {
    default = "awsdevops82s.online"
}

variable "zone_id" {
    default = "Z06951323BQNCIM51LI4E"
}