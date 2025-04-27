variable "dyamodb_table_name" {
  type        = string
  default     = "shivam-table"
  description = "This is the name of the DynamoDB table"
}

variable "ami_id" {
  type        = string
  default     = "ami-04f167a56786e4b09"
  description = "This is the AMI ID for the EC2(ubuntu) instance"
}
