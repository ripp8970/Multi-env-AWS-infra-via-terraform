resource "aws_s3_bucket" "my_bucket" {
  bucket = "terra-bucket-shivam"
  tags = {
    Name = "terra-bucket-shivam"
  }
}