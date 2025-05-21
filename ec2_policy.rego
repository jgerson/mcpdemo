package ec2_policy

denypolicy["Instance type is not t2.micro"] {
    input.resource = "ec2_instance"
    input.action = "create"
    not input.spec.instance_type == "t2.micro"
}

# The policy restricts EC2 instance provisioning to only allow the 't2.micro' instance type.
# Any instance type other than 't2.micro' will result in a deny decision.