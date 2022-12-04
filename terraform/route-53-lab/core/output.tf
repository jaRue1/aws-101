output "private_ip_1" {
  description = "ja_ec2_route53_lab_example_1"
  value       = aws_instance.ja_ec2_route53_lab_example_1.private_ip
}
output "private_ip_2" {
  description = "ja_ec2_route53_lab_example_2"
  value       = aws_instance.ja_ec2_route53_lab_example_2.private_ip
}
output "private_ip_3" {
  description = "ja_ec2_route53_lab_example_3"
  value       = aws_instance.ja_ec2_route53_lab_example_3.private_ip
}

output "public_ip_1" {
  description = "eip_1"
  value       = aws_eip.eip_1.public_ip
}

output "public_ip_2" {
  description = "eip_2"
  value       = aws_eip.eip_2.public_ip
}

output "public_ip_3" {
  description = "eip_3"
  value       = aws_eip.eip_3.public_ip
}

output "public_dns_1" {
  description = "eip_1_dns"
  value       = aws_eip.eip_1.public_dns
}

output "public_dns_2" {
  description = "eip_2_dns"
  value       = aws_eip.eip_2.public_dns
}

output "public_dns_3" {
  description = "eip_3_dns"
  value       = aws_eip.eip_3.public_dns
}

output "private_dns_1" {
  description = "ja_ec2_route53_lab_example_1_private_dns"
  value       = aws_instance.ja_ec2_route53_lab_example_1.private_dns
}
output "private_dns_2" {
  description = "ja_ec2_route53_lab_example_2_private_dns"
  value       = aws_instance.ja_ec2_route53_lab_example_2.private_dns
}
output "private_dns_3" {
  description = "ja_ec2_route53_lab_example_3_private_dns"
  value       = aws_instance.ja_ec2_route53_lab_example_3.private_dns
}

output "alb_id" {
  description = "ALB ID"
  value       = aws_lb.lb.id
}
