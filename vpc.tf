module "nv-vpc-4" {
  # source             = "../Modules/1.network"
  source             = "git@github.com:sairitishk/tf-module-vpc.git"
  vpc_cidr           = "10.90.0.0/16"
  vpc_name           = var.vpc_name_new
  environment        = var.env
  public_cidr_block  = ["10.90.1.0/24", "10.90.2.0/24", "10.90.3.0/24", "10.90.3.0/24", "10.90.2.0/24", "10.90.1.0/24"]
  private_cidr_block = ["10.90.10.0/24", "10.90.20.0/24", "10.90.30.0/24", "10.90.30.0/24", "10.90.20.0/24", "10.90.10.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1a", "us-east-1b"]
  owner              = "RyzeN"
}

module "nv-vpc-5" {
  # source             = "../Modules/1.network"
  source             = "git@github.com:sairitishk/tf-module-vpc.git"
  vpc_cidr           = "10.80.0.0/16"
  vpc_name           = "JUNE"
  environment        = var.env
  public_cidr_block  = ["10.80.1.0/24", "10.80.2.0/24", "10.80.3.0/24"]
  private_cidr_block = ["10.80.10.0/24", "10.80.20.0/24", "10.80.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b"]
  owner              = "RyzeN"
}

