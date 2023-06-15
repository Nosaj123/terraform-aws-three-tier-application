variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0d5eff06f840b45e9"
}

variable "pem" {
  default = "upworks" //do not add the '.pem' file extension
}

variable "lb_name" {
  default = "external-lB"
}

variable "lb_type" {
  default = "application"
}

variable "rds_identifier" {
  default = "my-rds"
}

variable "rds_storage" {
  default = "10"
}

variable "rds_engine" {
  default = "mysql"
}

variable "rds_engine_version" {
  default = "8.0"
}

variable "rds_instance_class" {
  default = "db.t2.micro"
}

variable "mysql_db_name" {
  default   = "mydb"
  sensitive = true
}

variable "mysql_db_username" {
  default   = "username"
  sensitive = true
}

variable "mysql_db_password" {
  default   = "password"
  sensitive = true
}