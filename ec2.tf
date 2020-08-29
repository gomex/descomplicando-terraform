data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["IaaSWeek-${var.hash_commit}"]
  }

  owners = ["178520105998"] # My User
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.app_name
  }
}


