variable "sg_id" {
    description = "SG ID for application load balancer "
    type = string 
}

variable "subnets" {
    description = "subnets for ALB"
    type = list(string)  
}

variable "vpc_id" {
    description = "vpc id for ALB"
    type = string  
}

variable "Instance" {
    description = "Instance id for target group attachment"
    type = list(string)
}