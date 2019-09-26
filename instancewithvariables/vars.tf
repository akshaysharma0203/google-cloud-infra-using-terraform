#port input variable 
variable "server_port" {
  description = "port value for https requests"
  default     = "8080"
}

variable machinetype {
  description  = "type of machine"
  default      = "f1-micro"
}
