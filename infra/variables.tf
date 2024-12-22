variable "create_instance" {
  description = "Create a new instance"
  type        = bool
  default     = true
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0e2c8caa4b6378d8c"
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "PublicInstance"
}

variable "key_name" {
  description = "The name of the EC2 key pair"
  type        = string
  default = "my-key"
}