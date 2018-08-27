variable "td_team" {
  default = "sec"
}
variable "td_project" {
  default = "monitoring"
}
variable "td_service_name" {
  default = "securitymonkey"
}
variable "td_environment" {
  default = "dev"
}

#-----------------------------------------

variable "aws_assume_role_arn" {
  default = "arn:aws:iam::575338236022:role/talkdesk-sec-dev-switchrole-sec"
}

variable "aws_region" {
  default = "us-east-1"
}

#-----------------------------------------

variable "vpc_subnet_ids" {
  description = "The VPC Subnet ID to launch in."
  type = "list"
  default = ["subnet-0d61c4be4c737f7e1", "subnet-0d61c4be4c737f7e1", "subnet-09b7f5161b90e1d67"]
}

variable "vpc_id" {default = "vpc-1ba87762"}
#variable "pub_external_subnet" {default = ["10.107.0.0/27", "10.107.32.0/27", "10.107.64.0/27"]}
variable "aws_azs" {default = ["us-east-1a", "us-east-1b", "us-east-1c"]}
variable "route_table" {default = "rtb-195dc161"}
#variable "vpn_routing_tables" {default = ["rtb-195dc161", "rtb-1f58c467", "rtb-58a33f20"]}
variable "public_subnets" {default = ["subnet-79773b23", "subnet-38531914", "subnet-6b71be0f"]}
variable "subnet_cidr" {default = ["10.207.254.0/27", "10.207.254.32/27", "10.207.254.64/27"]}
variable "cidr_block" {default = "10.107.0.0/16"}

#-----------------------------------------
variable "instance_count" {
  default = "1"
}

variable "ec2_keypair" {
  default = "admin_qa"
}

#Talkdesk base AMI
variable "ec2_ami_id" {default = "ami-0f1e1dbdcf59cd4cf"} # N Virginia}

variable "ec2_instance_type" {
  default = "t2.micro"
}

#-----------------------------------------
