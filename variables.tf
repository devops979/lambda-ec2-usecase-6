variable "instance_id" {
   type = string
   default = "i-0beb662a30291346c"
}

variable "start_schedule" {
   type = string
   default = "cron(26 08 ? * MON-FRI *)"
}

variable "stop_schedule" {
  type = string
  default = "cron(35 08 ? * MON-FRI *)"
}

variable "name_prefix" {
  type = string
  default = "prod_ec2_scheduler"
}