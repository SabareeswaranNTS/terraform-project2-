provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Use your desired AMI ID
  instance_type = "t2.micro"
  
  key_name = "my-ec2-key"  # Replace with your SSH key name
  
  security_groups = ["my-security-group"]
  
  tags = {
    Name = "MyEC2Instance"
  }
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
