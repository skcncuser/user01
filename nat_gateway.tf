resource "aws_nat_gateway" "user01ngwA" {
	allocation_id = "${aws_eip.nat_user01_1a.id}"
	subnet_id = "${aws_subnet.user01subnetA.id}"
}

resource "aws_nat_gateway" "user01ngwB" {
        allocation_id = "${aws_eip.nat_user01_1b.id}"
        subnet_id = "${aws_subnet.user01subnetB.id}"
}

