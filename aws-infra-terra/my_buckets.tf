#S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.my-env}-terra-bucket-shivam"
  tags = {
    Name = "${var.my-env}-terra-bucket-shivam"
    environment = var.my-env
  }
}