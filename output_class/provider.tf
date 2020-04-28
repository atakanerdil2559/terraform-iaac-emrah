provider "aws" {
  region = "us-east-1"
  version = "2.59"
}

// Creates Key
resource "aws_key_pair" "us-east-1-key_output" {
  key_name   = "emrah_key_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}





// Creates Instances
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}


// Creates Security Group




// Create Route 53




// Output Everything
output "key_pair" {
  value = "${aws_key_pair.us-east-key_output.key_name}"
}
output "instance_id" {
    value = "${aws_instance.web-output.id}"
}