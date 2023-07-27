module "nat-gw" {
  # source           = "../Modules/3.nat"
  source           = "git@github.com:sairitishk/tf-module-nat.git"
  vpc_name         = module.nv-vpc-4.vpc_nameee
  public_subnet_id = module.nv-vpc-4.public_subnets_id_1
  private_rt_id    = module.nv-vpc-4.private_route_table_id
}
