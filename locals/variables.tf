variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "component" {
  default = "cart"
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

/* variable "final_name" {    #this will not work. Cannot refer variable in variables.
  default = "${var.project}-${var.environment}-${var.component}"
} */
