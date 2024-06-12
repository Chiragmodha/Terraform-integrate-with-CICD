#EC2

resource "aws_instance" "web_server" {
    ami = "ami-04e5276ebb8451442"
    instance_type = "t2.micro"
    subnet_id = var.sbnt
    security_groups = [var.sgp]

    tags = {
        Name = "Web_server1"
    }
}