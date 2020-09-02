provider "aws" {    
    region = "ap-south-1"
}

resource "aws_db_instance" "aak-t6-db" {
    engine = "mysql"
    engine_version = "5.7.30"
    instance_class = "db.t2.micro"
    allocated_storage = 10
    name = "wpdb"
    username = "aakash"
    password = "redhat123"
    port = "3306"
    publicly_accessible = true
    iam_database_authentication_enabled = true
    vpc_security_group_ids = ["sg-aab92acf"]
    tags = {
      Name = "prodDB"
    }
}
	
