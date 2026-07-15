resource "null_resource" "deploy_sql" {

  triggers = {
    sql_file = filemd5("deploy.sql")
  }

  provisioner "local-exec" {
    command = "echo SQL deployment would execute here"
  }
}


