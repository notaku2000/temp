resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall-2"
  description = "Managed from Terraform"
  vpc_id = "vpc-0c55e279c4f46aa9b"

  tags = {
    Name = "terraform-firewall"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ipv4
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}
