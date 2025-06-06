variable "instance_id" {
  type    = string
  default = "i-0beb662a30291346c"
}

variable "start_schedule" {
   type = string
   default = "cron(45 12 ? * MON-FRI *)"
}

variable "stop_schedule" {
  type = string
  default = "cron(55 12 ? * MON-FRI *)"
}

variable "name_prefix" {
  type    = string
  default = "prod_ec2_scheduler"
}