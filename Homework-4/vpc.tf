resource "aws_vpc" "main" {
  cidr_block = var.vpc[0].cidr
enable_dns_hostnames = var.vpc[0].dns_hostnames
enable_dns_support = var.vpc[0].dns_support

tags = local.local_tags
}