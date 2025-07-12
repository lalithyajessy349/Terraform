variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "EC2 instance type"
}


variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "HelloWorld"
    Purpose = "variables-demo"
  }
  description = "Tags for the EC2 instance"
}

variable "sg_name" {
  type        = string
  default     = "allow-dev"
  description = "Name of the security group"
}

variable "sg_description" {
  type        = string
  default     = "Allowing all ports from internet" # all on one line ✅
  description = "Security group description"
}

variable "from_port" {
  type        = number
  default     = 0
  description = "Starting port for the security group rule"
}

variable "to_port" {
  type        = number
  default     = 0
  description = "Ending port for the security group rule"
}

variable "cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "CIDR blocks allowed in security group"
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "allow-dev"
  }
  description = "Tags for the security group"
}

variable "environment" {
  type     = string
  default  = "dev"
  description = "Name of the environment"
}


variable "instances" {
  default = {
      mongodb = "t3.micro"  #each keyword is assigned for each iteration. you will get each.key and each.value
      mysql = "t3.small"
      redis = "t3.micro"
      rabbitmq = "t3.micro"
  }
}  

variable "zone_id" {
  default = "Z03162591JHTF68QWA81"
}

variable "domain_name" {
  default = "lalithya.site"
}
