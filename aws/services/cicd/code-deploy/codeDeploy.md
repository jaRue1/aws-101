# CodeDeploy

![](./code-deploy.png)

## Make It Work
- Must need the Code Deploy Agent
![](./code-deploy-make-it-work.png)

## Components (Important !)
![](./code-deploy-components.png)

## Appspec.yml
- must be at the root of project
- ValidateService is very important it is the command executed to verify that the service is properly deployed

![](./code-deploy-appspec-yaml.png)

## Hooks Order (Note the Order!)
![](./code-deploy-deploy-%26-hooks-order.png)

## Deployment Configuration
![](./code-deploy-configurations.png)

## In Place Deployment
![](./code-deploy-in-place-deployment.png)

## Blue Green Deployment
![](./code-deploy-blue-green-deployment.png)


- Note for on-premise instances you must install the code deploy agent on them so that they can interact with this service

## Deployment on EC2
![](./code-deploy-deployment-ec2.png)


## Deployment to ASG
![](./code-deploy-asg.png)

## Rollback && Redeploy
- technically it is a new deploy that releases last good version (not a restored version)

![](./code-deploy-redeploy-rollback.png)

