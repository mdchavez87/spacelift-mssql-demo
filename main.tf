resource "null_resource" "deploy_sql" {

  provisioner "local-exec" {
    command = "sqlcmd -S pod10-mardc-lt,1433 -U spacelift_dba -C -i deploy.sql"
  }
}