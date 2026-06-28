module "vpc" {
  #source       = "../03-VPC-module"
  source       = "git::https://github.com/akhilkumarmallineni-lgtm/terraform-aws-vpc.git?ref=main"
  vpc_cidr     = var.vpc_cidr
  environment  = var.environment
  project_name = var.project
  is_peering_required = false
}