variable "region" {
  type        = string
  description = "The AWS region where the resources will be created"
  default     = "us-east-1"
}

variable "instance_type" {
  type        = string
  description = "The type of VMs which will be created"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID"
  default     = "ami-0d5eff06f840b45e9"
}

variable "pem" {
  description = "The .pem file to use if you require ssh access"
  default     = "upworks" //do not add the '.pem' file extension
}

variable "lb_name" {
  description = "The ALB Name"
  default     = "external-lB"
}

variable "lb_type" {
  description = "The ALB Type - Application"
  default     = "application"
}

variable "rds_identifier" {
  description = "The RDS Name"
  default     = "my-rds"
}

variable "rds_storage" {
  description = "The DB Storage Space"
  default     = "10"
}

variable "rds_engine" {
  description = "The Type of DB"
  default     = "mysql"
}

variable "rds_engine_version" {
  description = "The DB Version"
  default     = "8.0"
}

variable "rds_instance_class" {
  description = "The DB Instance Type"
  default     = "db.t2.micro"
}

variable "mysql_db_name" {
  description = "The DB Name"
  default     = "mydb"
  sensitive   = true
}

variable "mysql_db_username" {
  description = "The DB Username"
  default     = "username"
  sensitive   = true
}

variable "mysql_db_password" {
  description = "The DB Password"
  default     = "password"
  sensitive   = true
}