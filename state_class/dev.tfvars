region            = "us-east-1"
region_name       = "virginia"
vpc_cidr          = "10.0.0.0/16"

private_subnet1   = "10.0.1.0/24"
private_subnet2   = "10.0.2.0/24"
private_subnet3   = "10.0.3.0/24"

az1               = "a"
az2               = "b"
az3               = "c"

public_subnet1    = "10.0.101.0/24"
public_subnet2    = "10.0.102.0/24"
public_subnet3    = "10.0.103.0/24"

key_name          = "us-east-1-baston"
public_key_path   = "~/.ssh/id_rsa.pub"
ami               = "ami-0323c3dd2da7fb37d"
userdata          = "/home/ec2-user/terraform-iaac-emrah/state_class/userdata.tf"
public_subnet_id  = "10.0.103.0/24"

tags            = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Department  = "IT"
    Team        = "DevOps"
    Created_by  = "Emrah Seckin"
    
}