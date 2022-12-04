# VPC Crash Course

![VPC 101](./images/vpc-levels.png)

## VPC & Subnets

![Primer](./images/vpc-primer.png)
![Diagram](./images/vpc-diagram.png)
![Gateways](./images/vpc-internet-gw.png)

## ACL vs SG

![acl-&&-sg](./images/vpc-network.png)
![acl-vs-sg](./images/acl-vs-sg.png)

## VPC FLow Logs

![flow logs](./images/vpc-flow.png)

## VPC Peering

![peering](./images/vpc-peering.png)

- Note that what non transitive means is that if you create a peering connection that for A -> B and another from B -> C you cannot talk to vpc C from A without setting up a peering connection for A and C first.

## VPC Endpoints

![endpoints](./images/vpc-endpoints.png)

## Site to Site VPN

![](./images/site-to-site.png)

## Closing Comments

![](./images/closing.png)

## 3 Tier Solution Architecture

![](./images/t-3-archtecture.png)

- Route 53
- Public Subnet
- Private Subnet
- Data Subnet

## LAMP STACK

- Linux
- Apache
- MySql
- PHP
  ![](./images/lamp.png)

## WordPress On AWS

### High Level Architecture

![](./images/wp-aws-high-level.png)

### Low Level Architecture

![](./images/wp-aws-low-level.png)
