locals {
    ami_id = data.aws_ami.joindevops.id
    name = "${var.project}-${var.component}-${var.environment}"
}

