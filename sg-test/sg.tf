module "mysql_sg" {
    source = "../terraform-aws-securitygroup"
    project_name = "expense"
    environment = "dev"
    sg_name = "mysql"
    sg_description = "created for mySQL instance in expense dev"
    common_tags = var.common_tags
}
