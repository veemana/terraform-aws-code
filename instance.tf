resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    vpc_security_group_ids = ["${var.sg-id}"]
    key_name = "${var.ami_key_pair_name}"
    tags = {
        Name = "${var.instance_name}"
     }
} 
