resource "aws_instance" "pronl-demovm" {
   ami                      = var.ami
   instance_type            = var.instance_type
   count                    = var.ec2_count
   vpc_security_group_ids   = ["${aws_security_group.pronl-sg.id}]
   subnet_id                = element(var.vpc_private_subnets, count.index)

   tags = {
       Name = "${var.environment}-pronl-demovm-${count.index}"
   }
}