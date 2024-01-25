/*====
Variables used across all modules
======*/
locals {
  environment = "fast-food"
}

provider "aws" {
  region = var.region
}

module "documentDB" {
  source               = "./documentDB"
  environment          = local.environment
  subnet_ids           = ["subnet-00538005b3b0ea5c1", "subnet-0a9cc224e0d3c384d"]
  vpc_id               = "vpc-0a8f792f23527b865"
  docdb_instance_class = "db.r5.large"
  vpc_security_group_ids = [
    "sg-0048d7c60f8a0fe9f"
  ]
}