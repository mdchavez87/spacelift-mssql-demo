variable "sql_server" {
  type = string
}

variable "sql_database" {
  type = string
}

variable "sql_user" {
  type = string
}

variable "sql_password" {
  type      = string
  sensitive = true
}