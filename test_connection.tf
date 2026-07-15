resource "null_resource" "test_sql_connection" {

  provisioner "local-exec" {
    command = <<EOT
/opt/mssql-tools18/bin/sqlcmd \
-S ${var.sql_server} \
-C \
-Q "SELECT @@SERVERNAME"
EOT
  }
}