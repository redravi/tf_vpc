variable "name" {
  description = "The name of the VPC"
}
variable "cidr" {
    type = string
    description = "The CIDR block"
}
variable "public_subnet" {
    type = string
    description = "The public subnet to create"
}
variable "enable_dns_hostnames" {
    description = "should be true if you want private DNS within VPC"
    default = true
}

variable "enable_dns_support" {
    type = string
    description = "should be true if you want to use private DNS within the VPC"
    default = true

}

output "public_subnet_id" {
    value = "${aws_subnet.public.id}"
    sensitive = true
}
output "vpc_id" {
    value = "${aws_vpc.tfb.id}"
}

output "cidr" {
    value = "${aws_vpc.tfb.cidr_block}"
}

output "ELB_Address" {
    value = "${aws_elb.web.dns_name}"

}
output "adresses" {
    value = "${aws_instance.web.*.public_ip}"
}

output "public_subnet_id" {
    value = "${module.vpc.public_subnet_id}"
}
