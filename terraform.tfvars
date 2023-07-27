aws_region    = "us-east-1"
env           = "Production"
vpc_name_new  = "NV-VPC-Tenet"
role_name     = "ec2-test-role-modules"
profile_name  = "ec2-test-profile-modules"
instance_type = "t2.micro"
key_name      = "test"
amis = {
  us-east-1 = "ami-09437041008711081"
  us-east-2 = "ami-00c6c849418b7612c"
}