resource "aws_instance" "wordpress" {
  instance_type = "t2.micro"
  ami           = "${var.ami}"
  subnet_id     = "${aws_subnet.public1.id}"

  # (resource arguments)
}
