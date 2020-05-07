resource "aws_vpc" "task-state-class" {
  cidr_block = "${var.vpc_cidr}"
  tags       = "${var.tags}"
}

# # Private subnets
# ########################################################################################################################
# resource "aws_subnet" "private1" {
#     vpc_id     = "${aws_vpc.task-state-class.id}"
#     cidr_block = "${var.cidr_private1}"
#     tags = "${var.tags}"
# }
# resource "aws_subnet" "private2" {
#     vpc_id     = "${aws_vpc.task-state-class.id}"
#     cidr_block = "${var.cidr_private2}"
#     tags = "${var.tags}"
# }


# resource "aws_subnet" "private3" {
#     vpc_id     = "${aws_vpc.task-state-class.id}"
#     cidr_block = "${var.cidr_private3}"
#     tags = "${var.tags}"
# }
# ########################################################################################################################
# # Public Subnet
# ########################################################################################################################
# resource "aws_subnet" "public1" {
#     vpc_id     = "${aws_vpc.task-state-class.id}"
#     cidr_block = "${var.cidr_public1}"
#     tags = "${var.tags}"
# }
# resource "aws_subnet" "public2" {
#     vpc_id     = "${aws_vpc.task-state-class.id}"
#     cidr_block = "${var.cidr_public2}"
#     tags = "${var.tags}"
# }
# resource "aws_subnet" "public3" {
#     vpc_id     = "${aws_vpc.task-state-class.id}"
#     cidr_block = "${var.cidr_public3}"
#     tags = "${var.tags}"
# }
# ########################################################################################################################
# # Nat Gateway Association
# ########################################################################################################################
#     resource "aws_internet_gateway" "gw" {
#     vpc_id = "${aws_vpc.task-state-class.id}"
#     tags = "${var.tags}"
# }
#     resource "aws_nat_gateway" "gw1" {
#     allocation_id = "${aws_eip.nat.id}"
#     subnet_id     = "${aws_subnet.private1.id}"


#     tags = {
#         Name = "gw NAT"
#   }
#   }


# # resource "aws_nat_gateway" "gw" {
# #   allocation_id = "${aws_eip.nat.id}"
# #   subnet_id     = "${aws_subnet.public[1].id}"
# # }
# ########################################################################################################################


#     resource "aws_eip" "nat" {
#     vpc      = true
#     tags = "${var.tags}"
# }
# resource "aws_route_table" "r" {
#   vpc_id = "${aws_vpc.task-state-class.id}"
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = "${aws_internet_gateway.gw.id}"
#     tags = "${var.tags}"
#   }
# }
# # Route Table association
# resource "aws_route_table_association" "b1" {
#   subnet_id      = "${aws_subnet.public1.id}"
#   route_table_id = "${aws_route_table.r.id}"
#   tags = "${var.tags}"
# }
# resource "aws_route_table_association" "b2" {
#   subnet_id      = "${aws_subnet.public2.id}"
#   route_table_id = "${aws_route_table.r.id}"
#   tags = "${var.tags}"
# }
# resource "aws_route_table_association" "b3" {
#   subnet_id      = "${aws_subnet.public3.id}"
#   route_table_id = "${aws_route_table.r.id}"
# tags = "${var.tags}"
# }
# # Creating EC2 Instance
# ########################################################################################################################
# resource "aws_instance" "ec2-public" {
#   ami           = "${var.ami}"
#   instance_type = "t2.micro"
#   subnet_id     = "${var.public_subnet_id}"
#   key_name      = "${var.aws_key_pair.key_name.public_key_path}"
#   security_groups = ["${aws_security_group.security_group_for_task.name}"]
#   tags = "${var.tags}"
# }
#   resource "aws_key_pair" "us-east-1-bastion" {
#   key_name   = "${var.key_name.public_key_path}"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }
# resource "aws_security_group" "security_group_for_task" {
#   name        = "security_group_for_task"
#   description = "Allow TLS inbound traffic"


#   ingress {
#     description = "apache"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]


#   }


#    ingress {
#     description = "ssh"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }


#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }


#   tags = {
#     Name = "task-state-class"
#   }
# }  

