variable "subnet_id" {
  description = "Subnet ID for instance"
  type        = string
}

variable "security_groups" {
  description = "Security Group IDs"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}


variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "key_name" {
  description = "SSH Key name"
  type        = string
}
