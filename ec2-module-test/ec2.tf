module "ec2" {
    source = "../terraform-aws-ec2"
    sg_id =  "sg-0e51dfd46c5c80525"
}