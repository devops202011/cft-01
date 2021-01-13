resource "aws_security_group" "sg" {
  name ="ec2-sg"
  description = "Security Group using TF"

ingress  {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = [ "0.0.0.0/0" ]
  description = "ssh port"
  } 
 
 egress   {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = [ "0.0.0.0/0" ]
    } 

}