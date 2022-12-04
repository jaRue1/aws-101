variable "public_key" {
  description = "ssh public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrp5Svxcjl5X+FbQcR4zwP++EKWYqhz/NYFOsWA5TrdbB0mZxB+NTRJPAp6JAuqQYPmCSjfEvNk6P46ChF0Fsgk3u9NYB0t6A+F8Wq2vD+4jkPuhKdW1d6YjS8Y+v0jxgB0ar2p5cMY4T9snNnEe+9WOM13S+DZECcap1W8yPLYkka0x/wr3n7UbhMt5H0NUAhpFGUwoO7lF+nI5v36RsSee74+f4C+hru7rEZR9rzuD95AaX221dCNytLRxZaHVztAp0qxoeeuaAKrRmn24VQKUMV7h3Lw53N/QAojZQL1mEQDQ3PGGPqv88pFZpUzQFxnzvpVsKEcIeMYIY0tWvx admin@Admins-MBP.attlocal.net"
}


variable "route53_lab_vpc" {
  description = "VPC for route53 lab"
  type        = string
  default     = "10.0.0.0/16"
}
variable "instance_tenancy" {
  description = "it defines the tenancy of VPC. Whether it's defsult or dedicated"
  type        = string
  default     = "default"
}

variable "ami_id" {
  description = "ami id"
  type        = string
  default     = "ami-05fa00d4c63e32376"
}

variable "instance_type" {
  description = "Instance type to create an instance"
  type        = string
  default     = "t2.micro"
}

variable "ec2_iam_role_arn" {
  description = "ec2 IAM Role Arn"
  type        = string
  default     = "arn:aws:iam::097029379388:instance-profile/Power"
}

variable "availability_zone_a" {
  description = "us-east-1 first availiblity zone"
  type        = string
  default     = "us-east-1a"
}
variable "availability_zone_b" {
  description = "us-east-1 second availiblity zone"
  type        = string
  default     = "us-east-1b"
}
variable "availability_zone_c" {
  description = "us-east-1 first availiblity zone"
  type        = string
  default     = "us-east-1c"
}
