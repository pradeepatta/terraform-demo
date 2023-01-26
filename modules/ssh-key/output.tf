output "ssh_keypair" {
  value = tls_private_key.rsa.private_key_pem
}


output "key_name" {
  value = aws_key_pair.tf-key-pair.key_name

}
