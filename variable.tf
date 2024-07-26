variable "region" {
    type = string
    default = "us-east-1" 
}

variable "ami" {
    type = string
    default = "ami-0427090fd1714168b"
}

variable "key_name" {
    type = string
    default = "FFTerraform"
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}