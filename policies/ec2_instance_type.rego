package ec2

default allow = false

allow {
    input.instance_type == "t2.micro"
}