provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0d03cb826412c6b0f"
instance_type = "t2.medium"
key_name = "sonu"
vpc_security_group_ids = ["sg-048223c992445516c"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
