# CodeBuild

![](./code-build.png)

## Support Envs

![](./code-build-supported-envs.png)

## How it works

![](./code-build-how-it-works.png)

## buildspec.yml (very important)

- need to live in the root of your project
  ![](./code-build-buildspec-yaml.png)

## Local Build

![](./code-build-local-build.png)

## CodeBuild Vpc

**Common use cases**

- integration testing
- data query

![](./code-build-vpc.png)

## CodeBuild Security

- be sure your iam role has permissions to access the SSM or Secrets Manager
  ![](./code-build-security.png)
