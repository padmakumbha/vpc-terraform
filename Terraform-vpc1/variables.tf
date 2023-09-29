variable "vpc_cidr" {
    description = "vpc CIDR range"
    type = string  
    default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
    description = "subnet cidrs"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"] 
}

variable "subnet_names" {
    description = "subnet names"
    type = list(string)  
    default = [ "public subnet1", "public subnet2" ]
}