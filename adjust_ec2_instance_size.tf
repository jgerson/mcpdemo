provider "aws" {
  region = "us-east-1" // Specify your AWS region
}

# Data source to fetch instance details
data "aws_instance" "jeremytest1" {
  filter {
    name   = "tag:Name"
    values = ["jeremytest1"]
  }
}

data "aws_instance" "jeremytest2" {
  filter {
    name   = "tag:Name"
    values = ["jeremytest2"]
  }
}

# Resource to adjust instance type
resource "aws_instance" "jeremy1" {
  instance_id = data.aws_instance.jeremytest1.id
  instance_type = "t2.micro"
  # Add any other necessary configurations (e.g., key_name, security_groups)
}

resource "aws_instance" "jeremy2" {
  instance_id = data.aws_instance.jeremytest2.id
  instance_type = "t2.micro"
  # Add any other necessary configurations
}
