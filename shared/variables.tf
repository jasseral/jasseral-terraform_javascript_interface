

# variable "profile" {
#   default = "default"
# }

variable "region" {
  default = "us-east-1"
}

variable "access_key" {
  default = "YOUR_AWS_CLI_ACCESS_KEY"
}

variable "secret_key" {
  default = "YOUR_AWS_CLI_SECRET_KEY"
}

variable "instance_type_server" {
  default = "t2.medium"
}

variable "server" {
  default = 1
}

variable "image_id" {
  default     = "ami-085925f297f89fce1"
}

