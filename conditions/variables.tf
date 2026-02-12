variable "ami_instance" {

    type = string

    default = "ami-0220d79f3f480ecf5"
}

variable "environment" {

    default = "dev"
}

variable "instance_type_1" {
    default = "t3.small"
}


variable "instance_type_2" {

    default = "t3.micro"

}


variable "tags" {

    default = {
        
        Name = "Terraform"

        Terraform = "True"

        Project = "ERP"

        Environment = "Dev"
    }
}


variable "sg_allow_all" {

    default = "tf_allow_all"
}


variable "ingress_from_port" {
    
    default = 0
}


variable "ingress_to_port" {
    
    default = 0
}


variable "egress_from_port" {
    
    default = 0
}


variable "egress_to_port" {
    
    default = 0
}


variable "cidr_block" {

    default = ["0.0.0.0/0"]
}