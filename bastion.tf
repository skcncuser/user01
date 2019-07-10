resource "aws_instance" "instance01"{
  ami = "ami-0c3fd0f5d33134a76"
  availability_zone = "ap-northeast-1a"
  instance_type     = "t2.nano"
  key_name          = "user01key"

  vpc_security_group_ids = [
    "${aws_default_security_group.user01sg.id}",
  ]

  subnet_id                   = "${aws_subnet.user01subnetA.id}"
  associate_public_ip_address = true

}


resource "aws_instance" "instance02" {
  ami               = "ami-0c3fd0f5d33134a76"
  availability_zone = "ap-northeast-1a"
  instance_type     = "t2.nano"
  key_name          = "user01key"

  vpc_security_group_ids = [
    "${aws_default_security_group.user01sg.id}",
  ]

  subnet_id                   = "${aws_subnet.user01subnetB.id}"
  associate_public_ip_address = true

}






