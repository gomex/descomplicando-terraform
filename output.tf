output "ip_address" {
  value = "${aws_instance.web[*].public_ip}"
}