 provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATVBQXCIBJQ3ETOOK"
  secret_key = "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"
}


 resource "aws_db_instance" "myrds1" {
   allocated_storage = 20
   storage_type        = "gp2"
   identifier          = "mydb"
   engine              = "mysql"
   engine_version      = "8.0.34"
   instance_class      = "db.t3.micro"
   db_subnet_group_name = "mysubnetg"
   username            = "admin"
   password            = "rushi123"
   publicly_accessible = false
   skip_final_snapshot = true

   tags = {
     Name = "MyRDS1"
   }
 }



