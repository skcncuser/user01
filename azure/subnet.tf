resource "aws_subnet" "user01subnetA" {
	vpc_id = "${aws_vpc.user01vpc.id}"
	availability_zone = "ap-northeast-1a"
	cidr_block = "101.0.1.0/24"
}

resource "aws_subnet" "user01subnetB" {
        vpc_id = "${aws_vpc.user01vpc.id}"
        availability_zone = "ap-northeast-1a"
        cidr_block = "101.0.2.0/24"
}

