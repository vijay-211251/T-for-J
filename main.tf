# Specify the provider (AWS in this case)
provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

# Declare a resource for an EC2 instance
resource "aws_instance" "jenkins" {
  ami           = "ami-00a929b66ed6e0de6" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro" # Instance type (you can change as needed)

  tags = {
    Name = "My-Terraform-Instance" # Tag for the instance
  }
}

# Output the public IP of the created instance
output "instance_ip" {
  value = aws_instance.jenkins.public_ip
}
