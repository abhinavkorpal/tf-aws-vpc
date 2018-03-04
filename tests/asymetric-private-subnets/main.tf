# List of AZs and private subnets are not of equal length
#
# This example creates resources which are not present in all AZs.
# This should be seldomly needed from architectural point of view,
# and it can also lead this module to some edge cases.
#
module "vpc" {
  source = "../../"

  aws_region = "us-east-1"
  name       = "asymmetric-subnets-test"

  cidr = "10.0.0.0/16"

  azs              = ["us-east-1a", "us-east-1b", "us-east-1c"]
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
