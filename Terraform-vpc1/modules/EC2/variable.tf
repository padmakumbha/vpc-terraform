variable "sg_id" {
    description = "Sg id for Ec2"
    type = string  
}

variable "subnets" {
    description = "subnets for Ec2"
    type = list(string)  
}

variable "ec2_names" {
    description = "Ec2 names"
    type = list(string) 
    default = [ "Webserver1", "Webserver2" ] 
}