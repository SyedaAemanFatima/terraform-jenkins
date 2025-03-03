provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform-instance-1" {
  ami           = "ami-0d682f26195e9ec0f"
  instance_type = "t2.micro"
  key_name      = "Aeman_devops"
  tags = {
    Name  = "ss-instance-1"
    appid = "345"
    env   = "dev"
  }
  availability_zone = "ap-south-1a"
}

/*resource "aws_instance" "terraform-instance-2" {
  ami           = "ami-001843b876406202a"
  instance_type = "t2.micro"
  key_name      = "jenkins"
  tags = {
    Name = "ss-instance-2"

  }
  availability_zone = "ap-south-1a"
}*/
