resource "aws_instance" "master" {
  count             = "${var.instance_count}"
  ami               = "${var.ec2_ami_id}"
  instance_type     = "${var.ec2_instance_type}"
  key_name          = "${var.ec2_keypair}"
  subnet_id         = "${element(var.vpc_subnet_ids, count.index)}"
  source_dest_check = false

  tags {
    Name        = "${lower(var.td_environment)}-${lower(var.td_team)}-${lower(var.td_service_name)}-${format("%02d", count.index + 1)}"
    team        = "${lower(var.td_team)}"
    service     = "${lower(var.td_service_name)}"
    environment = "${lower(var.td_environment)}"
    project     = "${lower(var.td_project)}"
  }
}
