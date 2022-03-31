// reuse the vpc code

module "vpc-mod" {                      // module "module_logical_name"  // logical name can be anything
  source        = "./module/networking" // https://github.com/ajreddy425/TF-module-demo/tree/main/module/ec2
  vpc_cidr      = "172.16.0.0/16"
  vpc_tag       = "terraform-vpc-9am"
  subnet01_cidr = "172.16.1.0/24"
}


module "ec2_demo" {
  source  = "./module/compute"
  # ec2_tag = "terraform-ec2-module"
  sub_id  = module.vpc-mod.subnet_id  // module.networking module logical name.output logical name

}

# module "s3_demo"{
#   source="./module/storage"
# }


// for every module we need to give terraform init