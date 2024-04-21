resource "aws_db_subnet_group" "database-subnet-group" {
  name       = "database subnets"
  subnet_ids = [aws_subnet.frontend.id, aws_subnet.backend.id]

  tags = {
    Name = "Database Subnets"
  }
}

resource "aws_db_instance" "database-instance" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.database-instance-class
  db_name	       = "sqldb"
  username             = "username"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  availability_zone	= "us-east-1b"
  db_subnet_group_name	= aws_db_subnet_group.database-subnet-group.name
  multi_az		= var.multi-az-deployment
  vpc_security_group_ids	= [aws_security_group.database-security-group.id]
}
