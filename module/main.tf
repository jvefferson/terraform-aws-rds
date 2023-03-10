module rds {
    source = "../"
    region               = "us-east-1"
    allocated_storage    = 20
    engine               = "mysql"
    engine_version       = "5.7"
    instance_class       = "db.t3.micro"
    db_name              = "mydb"
    username             = "foo"
    password             = "foobarbaz"
    publicly_accessible  = true
    tags = {
        Name = "main"
    }
}

output endpoint {
    value = module.rds.endpoint
}