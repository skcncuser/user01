resource "aws_default_network_acl" "uesr01ncl" {
  default_network_acl_id = "${aws_vpc.user01vpc.default_network_acl_id}"

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
  subnet_ids = [
    "${aws_subnet.user01subnetA.id}",
    "${aws_subnet.user01subnetB.id}",
  ]
}
