# Tests example of a simple VPC that might be acceptable for development purposes.
#
#

module "vpc" {
  source = "../../"

  aws_region = "us-east-1"
  name       = "simple-example"

  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Team        = "DevOps"
    Environment = "dev"
    Project     = "infrastructure-development"
  }
}
