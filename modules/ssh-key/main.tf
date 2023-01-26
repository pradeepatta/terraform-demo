
// Generate the SSH keypair that we’ll use to configure the EC2 instance. 
// After that, write the private key to a local file and upload the public key to AWS

resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
//resource "local_sensitive_file" "private_key" {
  filename          = "${var.namespace}-key.pem"
  sensitive_content = tls_private_key.key.private_key_pem
  file_permission   = "0400"
}

resource "local_file" "tf-key" {
content  = tls_private_key.key.private_key_pem
filename = "${var.namespace}-key.pem"
}

resource "aws_key_pair" "key_pair" {
  key_name   = "${var.namespace}-key"
  public_key = tls_private_key.key.public_key_openssh
}

//resource "aws_key_pair" "tf-key-pair" {
//key_name = "tf-key-pair"
//public_key = tls_private_key.rsa.public_key_openssh
//}
//resource "tls_private_key" "rsa" {
//algorithm = "RSA"
//rsa_bits  = 4096
//}
//resource "local_file" "tf-key" {
//content  = tls_private_key.rsa.private_key_pem
//filename = "tf-key-pair"
//}
