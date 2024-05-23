provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one_instance"{
  ami           = var.ami_id  
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  iam_instance_profile = var.iam_role_attach
  root_block_device {
  volume_size = var.root_volume_size
}
tags={
    name="mynewinstance"
}
}


