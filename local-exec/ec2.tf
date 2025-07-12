
resource "aws_instance" "roboshop" {
  ami           = var.ami_id # left and right side names no need to be same
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.prod_all.id ]
  
  tags = var.ec2_tags

  provisioner "local-exec" {
    command = "${self.private_ip} > inventory"
    on_failure = continue #ignoring errors
  }

  provisioner "local-exec" {
    command = "echo 'instance is destroyed'"
    when = destroy
  }
}

resource "aws_security_group" "prod_all" {
    name        = var.sg_name
    description = var.sg_description

    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = var.sg_tags
}