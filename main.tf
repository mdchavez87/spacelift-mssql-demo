resource "null_resource" "deploy_sql" {

  triggers = {
    sql_file = filemd5("deploy.sql")
  }

  provisioner "local-exec" {
    command = "sqlcmd -S ${var.sql_server} -d ${var.sql_database} -U ${var.sql_user} -P ${var.sql_password} -C -i deploy.sql"
  }
}