// subnet for your vpc

 resource "aws_subnet" "subnet" {
     vpc_id = aws_vpc.main.id
     cidr_block = var.subnet01_cidr
     tags={
         Name="subnet-01-tf-mod"
     }
   
 }


