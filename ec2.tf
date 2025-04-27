#key pair

resource "aws_key_pair" "deployer-key" {
    public_key = file("D:/Multi-env-AWS-infra-via-terraform/terra-key.pub")
    key_name = "shivam-terra-key" #key name in aws
}

# default vpc

resource "aws_default_vpc" "default" {

}

#security group

resource "aws_security_group" "shivam-security" {
    name = "allow ports"
    description = "this sg is to allow ports for ec2 instance"
    vpc_id = aws_default_vpc.default.id #interpolation

    #incoming
    ingress {
        description = "This is for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #outgoing
    egress{
        description = "This is for outgoing internet"
        from_port = 0
        to_port = 0
        protocol= -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my-instance" {
    ami = var.ami_id #ami id for ubuntu
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer-key.key_name
    security_groups = [aws_security_group.shivam-security.name]
    tags = {
        Name = "terra-automated-instance"
    }
}