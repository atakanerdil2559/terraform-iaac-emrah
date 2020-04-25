provider "aws" {
  regions = "us-east-1"
}

resource "aws_key_pair" "us-east-1-key" {
  key_name   = "london_bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxThJYp7OJp0KTX3qhHdOJNngN+3pwNllBZpNwYsw3OvXgNbQAGPrBA4nvyZArITRgYqk8FDKpxu/IgxNgfZfYv2rzDFFTAh+8jtdp3uL0yutEjg82O0Yup+UDqDYZxaMzJUz5GK0NgBgkaHCCIXVbnUd65mZ8ZzRA2pIqZnWrU/P8
3br7V32wO79omTq2TsHKlLPgEP5axTASUjH1kDqW2bYFB/M17nuacxBN8Gft5sX7SQh7oQDwI5pkhY/Un+BOeWUZU/cfAMt9U71MBf3bAlD1KbcmTZXk6Cocn7MqPNc5DXyTjwXT++JtND4RJ2t71oXCrpR9HvBliW9tzLrj ec2-user@Bastion-London"
}