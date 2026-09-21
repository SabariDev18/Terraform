provider "aws" {
   region = "ap-south-1"
}

resource "aws_ami_from_instance" "my_ami"{
  name               = "ansible_ami"
  source_instance_id = "i-0e8070951de3bb135"
 
  tags = {
    Name   = "ansible_ami"
    }
} 
