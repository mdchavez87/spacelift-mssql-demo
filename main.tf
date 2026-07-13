resource "null_resource" "deploy_sql" {

  provisioner "local-exec" {
    command = "sqlcmd -S host.docker.internal,1433 -U spacelift_dba -P ${var.sql_password} -C -i deploy.sql"
  }
}