resource "aws_instance" "terraform" {
  ami           = var.ami_instance

  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.tf_allow_all.id]

  tags = var.tags
}


resource "aws_security_group" "tf_allow_all" {
  name        = var.sg_allow_all

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_block
  }

  egress {
    from_port       = var.egress_from_port
    to_port         = var.egress_to_port
    protocol        = "-1"
    cidr_blocks     = var.cidr_block
  }
}