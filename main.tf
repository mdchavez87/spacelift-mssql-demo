resource "null_resource" "database_migration" {

  triggers = {
    migration_file = "001_create_customer.sql"
    sql_checksum   = filemd5("database/migrations/001_create_customer.sql")
  }

  provisioner "local-exec" {
    command = <<EOT
/opt/mssql-tools18/bin/sqlcmd \
-S ${var.sql_server} \
-U ${var.sql_user} \
-P "${var.sql_password}" \
-C \
-b \
-d ${var.sql_database} \
-i database/migrations/001_create_customer.sql
EOT
  }
}