module "sg-all" {
  # source        = "../Modules/2.sg"
  source        = "git@github.com:sairitishk/tf-module-sg.git"
  service_ports = ["80", "443", "445", "8080", "22", "3389", "80", "443", "445", "8080", "22", "3389"]
  environment   = module.nv-vpc-4.environment
  vpc_id        = module.nv-vpc-4.vpc_id
  vpc_name      = module.nv-vpc-4.vpc_nameee
}
