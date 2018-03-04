# This configuration tests for implementation using no private subnets.
# Private subnets are intentionally left out of this test.
#
module "vpc" {
  source = "../../"

  aws_region = "us-east-1"
  name       = "no-private-subnets"

  cidr = "10.0.0.0/16"

  azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets      = ["10.0.0.0/22", "10.0.4.0/22", "10.0.8.0/22"]
  private_subnets     = []
  database_subnets    = ["10.0.128.0/24", "10.0.129.0/24"]
  elasticache_subnets = ["10.0.131.0/24", "10.0.132.0/24", "10.0.133.0/24"]

  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_nat_gateway   = false

  tags = {
    Team        = "DevOps"
    Environment = "dev"
    Name        = "no-private-subnets"
    Project     = "infrastructure-development"
  }
}
