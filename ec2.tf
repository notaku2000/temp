resource "aws_instance" "myec2" {
  ami = "ami-0ab02459752898a60"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e7e3e4b29a8ebd39"]
  subnet_id = "subnet-080ae3b25f638a882"
}
