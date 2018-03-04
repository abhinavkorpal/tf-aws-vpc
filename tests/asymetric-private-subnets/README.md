# VPC - Asymetric Private Subnets Test

Configuration in this directory creates set of VPC resources to test module implementation with asymetric number of private and public subnets. Example below:

```hcl
...
  azs              =  ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets  =  ["10.0.1.0/24"]
  public_subnets   =  ["10.0.101.0/24", "10.0.102.0/24"]
...
```

## Usage

```bash
$ terraform init
$ terraform plan
$ terraform apply
$ terraform destroy
```
