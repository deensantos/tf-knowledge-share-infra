provider "aws" {
  region = local.region
}

locals {
  name   = "tf-knowledge-share-vpc-1"
  name2   = "tf-knowledge-share-vpc-2"
  name3   = "tf-knowledge-share-vpc-3"
  name4   = "tf-knowledge-share-vpc-4"
  name5   = "tf-knowledge-share-vpc-5"
  name6   = "tf-knowledge-share-vpc-6"
  region = "us-east-1"

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-vpc"
    GithubOrg  = "terraform-aws-modules"
  }
}

################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name
  cidr = "10.0.0.0/16"

  azs                 = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.3.0/24","10.0.4.0/24"]

  manage_default_network_acl = true
  default_network_acl_tags   = { Name = "${local.name}-default" }

  manage_default_route_table = true
  default_route_table_tags   = { Name = "${local.name}-default" }

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = local.name
  }
}

module "vpc2" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name2
  cidr = "10.20.0.0/16"

  azs                 = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets     = ["10.20.1.0/24", "10.20.2.0/24"]
  public_subnets      = ["10.20.3.0/24","10.20.4.0/24"]

  manage_default_network_acl = true
  default_network_acl_tags   = { Name = "${local.name2}-default" }

  manage_default_route_table = true
  default_route_table_tags   = { Name = "${local.name2}-default" }

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = local.name2
  }
}

module "vpc3" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name3
  cidr = "10.30.0.0/16"

  azs                 = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets     = ["10.30.1.0/24", "10.30.2.0/24"]
  public_subnets      = ["10.30.3.0/24","10.30.4.0/24"]

  manage_default_network_acl = true
  default_network_acl_tags   = { Name = "${local.name3}-default" }

  manage_default_route_table = true
  default_route_table_tags   = { Name = "${local.name3}-default" }

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = local.name3
  }
}

module "vpc4" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name4
  cidr = "10.40.0.0/16"

  azs                 = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets     = ["10.40.1.0/24", "10.40.2.0/24"]
  public_subnets      = ["10.40.3.0/24","10.40.4.0/24"]

  manage_default_network_acl = true
  default_network_acl_tags   = { Name = "${local.name4}-default" }

  manage_default_route_table = true
  default_route_table_tags   = { Name = "${local.name4}-default" }

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = local.name4
  }
}


