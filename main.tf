provider "aws" {
    region = "eu-central-1"
}

# creating ec2 instance
resource "aws_instance" "web" {
ami = "ami-03c3a7e4263fd998c"
instance_type = "t2.micro"
key_name = aws_key_pair.mykey.key_name
vpc_security_group_ids = [ aws_security_group.sg.id ]
tags = {
    Name="TF-Code-ec2"
    Environment="Dev"
}
}

##  ssh-keygen -f tf_ec2_key

resource "aws_key_pair" "mykey" {
key_name = "my-ec2-key"
public_key = file("tf_ec2_key.pub") 
}

