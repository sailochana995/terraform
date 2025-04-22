variable "ami_id" {

    type = string

    default = "ami-09c813fb71547fc4f"

    description = "this is RHEL-9 AMI ID"
}

variable instance_type {
    type = string
    default = "t2.micro"
}

variable ec2_tags {

    type = map 
    default = {
        project = "expense"
        component = "backend"
        environment = "dev"
        name = "expense-backend-dev"
    }
}

variable from_port {
    type = number
    default = 22
}

variable to_port {
    type = number
    default = 22
}

variable cidr_blocks {
    type = list
    default = ["0.0.0.0/0"]
}

variable sg_tags {
    type = map
    default = {
        name = "expense-backend-dev"
    }
}