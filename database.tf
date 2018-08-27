resource "aws_db_instance" "default" {
  allocated_storage    = "${var.storage}"
  storage_type         = "gp2"
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  instance_class       = "${var.db_instance_type}"
  name                 = "${var.db_name}"
  username             = "${var.username}"
  password             = "${var.password}"
  db_subnet_group_name = "main-subnet-grp_"
  parameter_group_name = "default.postgres10"
  skip_final_snapshot  = "true"
  publicly_accessible  = "${var.exposed}"
  identifier = "db-${var.td_environment}-${var.td_service_name}"

  # vpc_security_group_ids = [
  #   "${aws_security_group.default.id}"
  # ]

  tags {
    Name        = "${lower(var.td_environment)}-${lower(var.td_team)}-${lower(var.td_service_name)}-${format("%02d", count.index + 1)}"
    team        = "${lower(var.td_team)}"
    service     = "${lower(var.td_service_name)}"
    environment = "${lower(var.td_environment)}"
    project     = "${lower(var.td_project)}"
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "main-subnet-grp_"
  subnet_ids = [
    "subnet-0d61c4be4c737f7e1",
    "subnet-09b7f5161b90e1d67"
  ]


  tags {
    Name        = "${lower(var.td_environment)}-${lower(var.td_team)}-${lower(var.td_service_name)}-${format("%02d", count.index + 1)}"
    team        = "${lower(var.td_team)}"
    service     = "${lower(var.td_service_name)}"
    environment = "${lower(var.td_environment)}"
    project     = "${lower(var.td_project)}"
  }
}
