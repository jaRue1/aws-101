# Virtual Private Cloud:
resource "aws_vpc" "route53_lab_vpc" {
  cidr_block           = var.route53_lab_vpc
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = true
  enable_dns_hostnames = true
}

# Public subnet: 1
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.route53_lab_vpc.id
  availability_zone = var.availability_zone_a
  cidr_block        = "10.1.0.0/20"

  tags = {
    "Name" = "Public-Subnet-1"
  }
}
# Public subnet: 2
resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.route53_lab_vpc.id
  availability_zone = var.availability_zone_b
  cidr_block        = "10.1.16.0/20"

  tags = {
    "Name" = "Public-Subnet-2"
  }
}
# Public subnet: 3
resource "aws_subnet" "public_subnet_3" {
  vpc_id            = aws_vpc.route53_lab_vpc.id
  availability_zone = var.availability_zone_c
  cidr_block        = "10.1.32.0/24"

  tags = {
    "Name" = "Public-Subnet-3"
  }
}


# Internet Gateway:
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.route53_lab_vpc.id

  tags = {
    "Name" = "Internet-Gateway"
  }
}

#  Public Route Table:
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.route53_lab_vpc.id

  tags = {
    "Name" = "Public-RouteTable"
  }
}

# Public Route:
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# Public Route Table Association: 1
resource "aws_route_table_association" "public_rt_association_1" {
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = aws_subnet.public_subnet_1.id
}
# Public Route Table Association: 2
resource "aws_route_table_association" "public_rt_association_2" {
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = aws_subnet.public_subnet_2.id
}
# Public Route Table Association: 3
resource "aws_route_table_association" "public_rt_association_3" {
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = aws_subnet.public_subnet_3.id
}

# VPC FlowLogs:
resource "aws_flow_log" "vpc_flow_log" {
  iam_role_arn         = data.aws_iam_role.ec2_iam_role.arn
  log_destination_type = "cloud-watch-logs"
  log_destination      = aws_cloudwatch_log_group.cloudwatch_log_group.arn
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.route53_lab_vpc.id
}

#  CloudWatch Log Group:
resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
  name              = "VPC-FlowLogs-Group"
  retention_in_days = 1
}
