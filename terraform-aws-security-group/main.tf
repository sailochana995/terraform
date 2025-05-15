resource "aws_security_group" "main" {
  name        = "local.sg_finanal_name"
  description = "var.sg_discription"
  vpc_id      = var.vpc.id

    egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    prefix_list_ids = [aws_vpc_endpoint.my_endpoint.prefix_list_id]
  }
}



  tags = merge(
    comman_tags,
    var.sg_tags,
    {
        Nam = local.sg_finanal_name
    }
  )
