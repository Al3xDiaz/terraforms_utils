provider "aws"{
    region = "us-east-1"
}
resource "aws_instance" "test" {
    ami = "ami-0b9c9f62"
    instance_type = "t2.micro"
    tags = {
        Name = "test-instance"
        Environment = "Development"
    }
}