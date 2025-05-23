
            resource "aws_instance" "this" {
            ami = "ami-09c813fb71547fc4f"
            vpc_security_group_ids = [aws_security_group.allow_tls.id]
            instance_type = "t2.micro"
            tags = {
            Name = "terraform"
    }

}
            resource "aws_security_group" "allow_tls" {
            name        = "allow_tls"
            description = "Allow TLS inbound traffic and all outbound traffic"

             dynamic "ingress" {
             for_each = var.ingress_ports
             content {
             from_port        = ingress.value["from_port"]
             to_port          = ingress.value["to_port"]
             protocol         = ingress.value["protocol"]
             cidr_blocks      = ingress.value["cidr_blocks"]
             
             }
                
  }

             egress {
             from_port        = 0
             to_port          = 0
             protocol         = "-1"
             cidr_blocks      = ["0.0.0.0/0"]
    
  } 


            tags = {
            Name = "allow_tls"
  }
}