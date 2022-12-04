# Deploy a 3  EC2 Instances (each in a diffeerent AZ) behind an ALB 
#  ec2 should be able to be accessed via ssh and have strat up script ran for each

// note export profile as a eviorment variable before running terraform cli in order to access aws account
// like so : export AWS_PROFILE=user1

# lab ref https://aws.plainenglish.io/deploy-a-set-of-ec2-instances-behind-an-alb-using-terraform-403fe584f09e
## Creating 3 EC2 Instances: 
resource "aws_instance" "ja_ec2_route53_lab_example_1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "aws_key"
  availability_zone      = var.availability_zone_a
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.main.id]
  iam_instance_profile   = data.aws_iam_role.ec2_iam_role.name

  tags = {
    Name          = "ja-ec2-route53-1"
    "Environment" = "Test"
    "CreatedBy"   = "Terraform"
  }
  timeouts {
    create = "2m"
  }
  user_data = filebase64("${path.module}/user-data.sh")
}

resource "aws_instance" "ja_ec2_route53_lab_example_2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "aws_key"
  availability_zone      = var.availability_zone_b
  subnet_id              = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.main.id]
  iam_instance_profile   = data.aws_iam_role.ec2_iam_role.name
  tags = {
    Name          = "ja-ec2-route53-2"
    "Environment" = "Test"
    "CreatedBy"   = "Terraform"
  }
  timeouts {
    create = "2m"
  }
  user_data = filebase64("${path.module}/user-data.sh")

}

resource "aws_instance" "ja_ec2_route53_lab_example_3" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "aws_key"
  availability_zone      = var.availability_zone_c
  subnet_id              = aws_subnet.public_subnet_3.id
  vpc_security_group_ids = [aws_security_group.main.id]
  iam_instance_profile   = data.aws_iam_role.ec2_iam_role.name
  tags = {
    Name          = "ja-ec2-route53-3"
    "Environment" = "Test"
    "CreatedBy"   = "Terraform"
  }
  timeouts {
    create = "2m"
  }
  user_data = filebase64("${path.module}/user-data.sh")
}

# Creating 3 Elastic IPs:
resource "aws_eip" "eip_1" {
  instance         = aws_instance.ja_ec2_route53_lab_example_1.id
  public_ipv4_pool = "amazon"
  vpc              = true

  tags = {
    "Name" = "EIP-1"
  }
}

resource "aws_eip" "eip_2" {
  instance         = aws_instance.ja_ec2_route53_lab_example_2.id
  public_ipv4_pool = "amazon"
  vpc              = true

  tags = {
    "Name" = "EIP-2"
  }
}

resource "aws_eip" "eip_3" {
  instance         = aws_instance.ja_ec2_route53_lab_example_3.id
  public_ipv4_pool = "amazon"
  vpc              = true

  tags = {
    "Name" = "EIP-3"
  }
}

# Creating EIP association with EC2 Instances:
resource "aws_eip_association" "eip_association_1" {
  instance_id   = aws_instance.ja_ec2_route53_lab_example_1.id
  allocation_id = aws_eip.eip_1.id
}

resource "aws_eip_association" "eip_association_2" {
  instance_id   = aws_instance.ja_ec2_route53_lab_example_2.id
  allocation_id = aws_eip.eip_2.id
}

resource "aws_eip_association" "eip_association_3" {
  instance_id   = aws_instance.ja_ec2_route53_lab_example_3.id
  allocation_id = aws_eip.eip_3.id
}

## SSH PUBLIC KEY
resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = var.public_key
}

