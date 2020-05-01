resource "aws_subnet" "private1" {
  vpc_id                      = "${aws_vpc.task-state-class.id}"        # Gets VPC id
  cidr_block                  = "${var.private_subnet1}"                   # Gets a cdir block
  availability_zone           = "${var.region}${var.az1}"               # Get public IP when is Created
  map_public_ip_on_launch     = true                                    # Attaches tags
  tags                        = "${var.tags}"
}
  resource "aws_subnet" "private2" {
  vpc_id                      = "${aws_vpc.task-state-class.id}"
  cidr_block                  = "${var.private_subnet2}"
  availability_zone           = "${var.region}${var.az2}"
  map_public_ip_on_launch     = true
  tags                        = "${var.tags}"
  }
  resource "aws_subnet" "private3" {
  vpc_id                      = "${aws_vpc.task-state-class.id}"
  cidr_block                  = "${var.private_subnet3}"
  availability_zone           = "${var.region}${var.az3}"
  map_public_ip_on_launch     = true
  tags                        = "${var.tags}"

}