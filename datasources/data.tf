data "aws_ami" "joindevops" {
    filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

}

output "ami_id" {
    value = data.aws_ami.joindevops
}