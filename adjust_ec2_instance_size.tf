provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Update with your desired AMI
  instance_type = "t2.micro"

  # Security group and subnet
  vpc_security_group_ids = ["sg-0123456789abcdef0"]  # Update with actual security group ID
  subnet_id              = "subnet-0123456789abcdef0"  # Update with actual subnet ID

  tags = {
    Name = "InstanceSizeAdjustment"
  }
}
