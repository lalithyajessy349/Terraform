module "ec2" {
    source = "../terraform-aws-instance"   #module is in our workspce so one step back
    sg_ids = ["sg-004f548a56d6eac4f"]
    
    
    tags = {
        Name = "cart"
    }
}