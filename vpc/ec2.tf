resource "aws_instance" "server" {
  ami = "ami-0a63365ec206b92e3"
  instance_type = "t3.micro"
 
  subnet_id = aws_subnet.public.id

 vpc_security_group_ids = [
  aws_security_group.instance_sg.id
]

key_name = "terraform-key" 

tags= {
 Name = "terraform-server"
}
}
