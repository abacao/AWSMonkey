output "EC2Name" {
  value = "${aws_instance.master.*.tags.Name}"
}

output "EC2Username" {
  value = "admin"
}
