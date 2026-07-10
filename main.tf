resource "null_resource" "deploy_sql" {

  provisioner "local-exec" {
    command = "sqlcmd -S localhost -U spacelift_dba -P ${var.sql_password} -i deploy.sql"
  }
}