module "ec2-role" {
  # source              = "../Modules/4.iam"
  source              = "git@github.com:sairitishk/tf-module-role.git"
  instanceprofilename = var.profile_name
  env                 = module.nv-vpc-4.environment
  rolename            = var.role_name
}