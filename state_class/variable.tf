variable "region" {}
variable "region_name" {}
variable "vpc_cidr" {}

variable "private_subnet1" {}
variable "private_subnet2" {}
variable "private_subnet3" {}

variable "public_subnet1" {}
variable "public_subnet2" {}
variable "public_subnet3" {}

variable "key_name" {}
variable "public_key_path" {}
variable "ami" {}
variable "userdata" {}
variable "public_subnet_id" {}
variable "az1" {}
variable "az2" {}
variable "az3" {}
variable "tags" {
  type = "map"
}