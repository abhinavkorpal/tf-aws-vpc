# VPC - No Private Subnets Test

Configuration in this directory creates set of VPC resources to test implementation with no private subnets.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
$ terraform destroy
```

Note that this example may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.