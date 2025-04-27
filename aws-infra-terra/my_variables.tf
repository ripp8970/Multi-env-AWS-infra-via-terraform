variable "my-env" {
  description = "This is environment for infrastructure. i.e. dev, test, prod"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the ec2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the ec2 instance"
  type        = string
}

variable "instance_count" {
  description = "The number of instances to create"
  type        = number
}