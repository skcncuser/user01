resource "aws_route_table" "user01rt" {
  vpc_id = "${aws_vpc.user01vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.user01igw.id}"
  }

}

resource "aws_route_table_association" "uesr01rtassociationa" {
  subnet_id      = "${aws_subnet.user01subnetA.id}"
  route_table_id = "${aws_route_table.user01rt.id}"
}

resource "aws_route_table_association" "user01rtassociationb" {
  subnet_id      = "${aws_subnet.user01subnetB.id}"
  route_table_id = "${aws_route_table.user01rt.id}"
}



