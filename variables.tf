variable "instance_name" {
        description = "Name of the instance to be created"
        default = "awsbuilder-demo"
}

variable "instance_type" {
        default = "t3.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-0af6eddaad8edcee7"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0a6351192ce04d50c"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}

variable "ami_key_pair_name" {
        default = "aru1"
}
