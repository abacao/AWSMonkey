variable "environment" {
  default = ""
}

variable "project" {
  default = ""
}

variable "instance_type" {
  default = ""
}

variable "db_instance_type" {
  default = "db.t2.large"
}

variable "identifier" {
  default     = "secmonkey"
  description = "Identifier for your DB"
}

variable "storage" {
  default     = "20"
  description = "Storage size in GB"
}

variable "engine" {
  default     = "postgres"
  description = "Engine type, example values mysql, postgres"
}

variable "engine_version" {
  default     = "10.4"
  description = "Engine version"
}

variable "db_name" {
  default     = "mydb"
  description = "db name"
}

variable "username" {
  default     = "myuser"
  description = "User name"
}

variable "password" {
  default     = "mypassword"
  description = "password, provide through your ENV variables"
}

variable "exposed" {
  default     = "false"
  description = "rule to expose database to public"
}
