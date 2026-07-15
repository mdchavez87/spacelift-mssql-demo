resource "null_resource" "deploy_sql" {

  triggers = {
    sql_file = filemd5("deploy.sql")
  }

  provisioner "local-exec" {
    command = "echo SQL deployment would execute here"
  }
}

output "sql_server" {
  description = "SQL Server address used for deployment"
  value       = var.sql_server
}

output "sql_database" {
  description = "SQL Database name used for deployment"
  value       = var.sql_database
}
