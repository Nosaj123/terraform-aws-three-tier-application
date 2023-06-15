resource "aws_db_instance" "default" {
  identifier             = var.rds_identifier
  allocated_storage      = var.rds_storage
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = var.rds_engine
  engine_version         = var.rds_engine_version
  instance_class         = var.rds_instance_class
  multi_az               = true
  name                   = var.mysql_db_name
  username               = var.mysql_db_username
  password               = var.mysql_db_password
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.database-sg.id]

  tags = {
    Name = "DB Server"
  }
}