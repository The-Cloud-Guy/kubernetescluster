locals {
  name   = "eks-cluster-demo"
  region = "us-east-1"

  vpc_cidr              = "10.0.0.0/16"
  azs                   = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

  tags = {
    Project     = local.name
    Environment = "Dev"
    Team        = "Platform_team"
  }
}