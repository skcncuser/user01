resource "aws_internet_gateway" "user01igw" {
	vpc_id = "${aws_vpc.user01vpc.id}"
}
