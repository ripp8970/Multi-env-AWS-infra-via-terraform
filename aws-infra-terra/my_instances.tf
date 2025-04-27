#ec2 instance
resource "aws_instance" "my-instance" {
    count = var.instance_count #number of instances to create
    ami = var.ami_id #ami id for ubuntu
    instance_type = var.instance_type
    tags = {
        Name = "${var.my-env}-terra-ec2-shivam"
    }
}