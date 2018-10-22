module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.110.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.110.1.0/24", "10.110.2.0/24", "10.110.3.0/24"]
  public_subnets  = ["10.110.101.0/24", "10.110.102.0/24", "10.110.103.0/24"]

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
