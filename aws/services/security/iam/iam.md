# IAM : User Groups

IAM = Identity and Access Management

This is a global service

Users, are people within your organization, and can be grouped. See screen shot below.

![example1](./example1.png)

Groups only contain users not other groups. Users can belong to multiple groups.

![example2](./example2.png)

# Permissions

Users or Groups can assinged JSON documents called polices.

Theses polices define permissions for the users.

**Least Privilege Principle**: _don't give more permission than a user needs._

# IAM Polices Inheritance

![example3](./example3.png)

Note that inline policies are **only** attached to a user and can be applied to users within groups or outside of groups.

Users within multiple groups can inherit multiple policies
![example4](./example4.png)

## Policy Structure

- Version -> policy language version, always include" 2012-10-17
- Id: identifier for the policy (optional)
- Statement: one or more individual statements (required)
  - Sid: identifier for the statement(optional)
  - Effect: whether the statement allows or denies access (Allow, Deny)
  - Principal: account/user/role to which the policy is applied.
  - Action: list of api calls (actions) this policy allows or denies.
  - Resource: list of resources to which the actions are applied to.
  - Condition: for when this policy is in effect (optional)

![example5](./example5.png)

## Password Policy

![password-policy](./password-policy.png)

## AWS MFA

Pros of using MFA
![mfa-pros](./mfa-pros.png)

MFA Tools
![mfa-tools](./mfa-tools.png)

## AWS CloudShell

A terminal within the AWS Cloud.

## IAM Roles

Assign permissions to resources (non-users) to perform actions on your behalf.

![iam-roles](./iam-role-example.png)

Common Roles:

- EC2 Instance Roles

- Lambda Function Roles

- CloudFormation Roles

## IAM Security Tools

1. IAM Credentials Report (Account Level)

- a report the lists all your account's users and the status of their various credentials

2. IAM Access Advisor(User-level)

- Access advisor shows the service permissions granted to a user and when those services were last accessed.
- You can use this to revise your polices

## IAM GuideLine / Best Practices

![guidelines](./guidelines.png)

# IAM Summary

![summary](./summary.png)

# Advanced Section

## Authorization Model (Exam Question)

![](./iam-auth-model.png)

## IAM & S3

![](./iam%2Bs3.png)

## IAM & AWS Services Example 1

![](./iam-example-1.png)

## IAM & AWS Services Example 2

![](./iam-example-2.png)

## IAM & AWS Services Example 3

![](./iam-example-3.png)

## IAM & AWS Services Example 4

![](./iam-example-4.png)

## Dynamic Policies

![](./iam-dynamic-policies-iam.png)

## Dynamic Policy example

![](./iam-dynaimc-policy-example.png)

## Inline vs Managed

![](./iam-inline-vs-managed.png)

## Pass A Role to AWS service

![](./iam-pass-role.png)

## Pass A Role to AWS service Example

![](./iam-pass-a-role.png)

## Can any role be passed to any service ?

![](./iam-can-a-role-be-passed-to-any-service.png)

##

![]()

##

![]()

##

![]()
