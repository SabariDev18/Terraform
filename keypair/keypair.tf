provider "aws" {
  region = "ap-south-1"
 }

resource "aws_key_pair" "deployer" {
  key_name = "terraform-key"
  public_key = tls_private_key.aws_key.public_key_openssh
}

resource "tls_private_key" "aws_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

