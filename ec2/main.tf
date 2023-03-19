resource "aws_instance" "my_example" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t2.micro"
  tags = {
    Name = "tf-instance-1"
  }
}