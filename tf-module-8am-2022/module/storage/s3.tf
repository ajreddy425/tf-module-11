// create s3 

resource "aws_s3_bucket" "s3_demo" {
  bucket = "my-tf-module-s3-26031"

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}


// to make bucket private( I will chekck this later)

resource "aws_s3_bucket_acl" "s3_pri" {
  bucket = aws_s3_bucket.s3_demo.id
  acl    = "private"
}


// This is not possible in current version of the object.

# resource "aws_s3_bucket" "demos3" {
#     bucket = "practive-s3-bucket-1350"
#     acl = private   
# }