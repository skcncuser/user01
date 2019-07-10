resource "aws_vpc" "user01vpc" {
	cidr_block = "101.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support = true
	instance_tenancy = "default"

	}
