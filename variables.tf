variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owners"
  
  type = object({
    name = string
    owner = string
  })

  default = {
    name   = "name"
    owner = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
  }
}

variable "environment" {
  description = "Developer environment"

  type = object({
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }

}

variable "asg_min_size" {
  description = "Minimum number of instances in the ASG"
  default = 1
}

variable "asg_max_size" {
  description = "Max number of instances in the ASG"
  default = 2
}
