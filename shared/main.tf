provider "aws" {
  //profile = var.profile
  region  = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_instance" "server" {
  count = var.server
  ami                         = var.image_id
  instance_type               = var.instance_type_server
  subnet_id                   = aws_subnet.subnet_for_wordpress.id
  vpc_security_group_ids      = [aws_security_group.allow_all_traffic.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.my_pair_key.key_name
  
  tags = {
    Name = "dinamic_instance-${count.index}"
  }

  
}



