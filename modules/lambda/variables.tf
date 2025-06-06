
variable "function_name" {}
variable "handler" {}
variable "runtime" {}
variable "role" {}
variable "environment_variables" {
  type = map(string)
}
