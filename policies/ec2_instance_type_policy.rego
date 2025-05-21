package ec2

deny[msg] {
  input.resource.type == "aws_instance"
  input.resource.instance_type != "t2.micro"
  msg = sprintf("Instance type %v is not allowed. Only t2.micro is permitted.", [input.resource.instance_type])
}