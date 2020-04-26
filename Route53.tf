# resource "aws_route53_zone" "main" {
#   name = "kenvpt.com"
#   delegation_set_id = "${data.aws_route53_delegation_set.dset}"
# }
resource "aws_route53_record" "seckinemrah" {
  zone_id = "Z07790913BPOIKEDCT8E0"
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.my_instance.public_ip}"]
}