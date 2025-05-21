package ec2_instance_policy

default allow = false

# This policy ensures that only the 't2.micro' instance type is allowed
allow {
    input.instance_type == "t2.micro"
}