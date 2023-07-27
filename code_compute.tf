module "ec2-public" {
  # source          = "../Modules/5.compute"
  source          = "git@github.com:sairitishk/tf-module-ec2.git"
  env             = module.nv-vpc-4.environment
  amis            = var.amis
  aws_region      = var.aws_region
  instance_type   = var.instance_type
  key_name        = var.key_name
  public_subnets  = module.nv-vpc-4.public_subnets_id
  private_subnets = module.nv-vpc-4.private_subnets_id

  sg_id                = module.sg-all.sg_id
  vpc_name             = module.nv-vpc-4.vpc_nameee
  iam_instance_profile = module.ec2-role.instprofile
}
