# Tests the case that subnets are not of equal length. 
# Creates resources which are not present in all AZs.

module "vpc" {
  source = "../../"

  aws_region = "us-east-2"
  name       = "asymmetric-subnets-test"

  cidr = "10.0.0.0/16"

  azs              = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets  = ["10.0.1.0/24"]
  public_subnets   = ["10.0.101.0/24", "10.0.102.0/24"]
  database_subnets = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]

  create_database_subnet_group = true
  enable_nat_gateway           = true

  tags = {
    Name        = "asymetrical-subnets-test"
    Environment = "dev"
  }
}
