terraform {
  required_version = ">= 0.11.7"
}

provider "aws" {
  region = "${var.aws_region}"

  assume_role {
    role_arn = "${var.aws_assume_role_arn}"
  }
}
