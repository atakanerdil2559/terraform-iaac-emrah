resource "aws_ebs_volume" "100G" {
  availability_zone = "us-west-2a"
  size              = 100