output "Instance"{
    value = aws_instance.web.*.id
}

