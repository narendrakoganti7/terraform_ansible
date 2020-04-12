resource "aws_instance" "ansible" {
  ami = "ami-0a74bfeb190bd404f"
  instance_type = "t2.micro"
  // vpc_security_group_ids = ["sg-03fc79fa4f880452a"] this hard core security group
  security_groups = ["${aws_security_group.serviceSG.name}"]
  key_name = "jenk"

  tags = {
    Name = "ansible"
  }
  provisioner "file" {
   source = "install_ansible.sh"
    destination = "/tmp/install_ansible.sh"
  }

/* provisioner "remote-exec" {
    inline = [
    "chmod +x /tmp/install_ansible.sh", "/tmp/install_ansible.sh"
    ]
  }
*/
}
