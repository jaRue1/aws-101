# ECS Elastic Container Service

## EC2 Launch Type

![](./images/ecs-ec2-launch-type.png)

## Fargate Launch Type (Exam Pushes Fargate)

![](./images/ecs-fargate-launch.png)

## IAM Roles for ECS

![](./images/ecs-iam-roles.png)

- Know the distinction between Instance Profile Role and Task Role
- Valid for both Ec2 and Fargate Launch Types (Task Roles)

## Load Balancer Integrations

![](./images/ecs-load-balancer-intergration.png)

## Data Volumes (EFS)

![](./images/ecs-data-volumes-efs.png)

- Use case: persistent multi-az shared storage for containers
- note s3 can't be mounted as a file system

## ECS Auto Scaling

![](./images/ecs-auto-scaling.png)

## EC2 Auto Scaling

![](./images/ec2-auto-scaling.png)

- if you have to choose use **ECS Cluster Capacity Provider**

## Scaling Example

![](./images/ecs-scaling-example.png)

## ECS Rolling Updates

![](./images/ecs-rolling-updates.png)

## Min 50 Max 100 (Exam Question)

![](./images/ecs-rolling-50-min-100-max.png)

## Min 100 Max 150 (Exam Question)

![](./images/ecs-rolling-update-100-min-150-max.png)

# Solution Architecture

## ECS invoked by Event Bridge

- example of a serverless architecture that processes object from s3 using docker container

  ![](./images/ecs-task-invoked-by-event-bridge.png)

## ECS invoked by Event Bridge Schedule

![](./images/ecs-task-invoke-by-event-bridge-schedule.png)

## ECS SQS Queues

![](./images/ecs-sqs-example.png)

# Task Definitions (Exam Questions)

![](./images/ecs-task-definitions.png)

## Load Balancing EC2 Launch Type

![](./images/ecs-ec2-load-balancing-type.png)

## Load Balancing Fargate Launch Type

![](./images/ecs-fargate-load-balancer.png)

## Iam Roles ECS (Exam Question)

- Where do you define a iam role for ecs tasks ?

![](./images/ecs-one-iam-role-per-task.png)

## Env Variables

![](./images/ecs-env-vars.png)

## Data Volumes (Bind Mounts)

![](./images/ecs-data-volumes.png)

## Data Volumes EFS

![](./images/ecs-data-volumes-efs.png)

# Task Placement (Exam Question)

![](./images/ecs-task-placement.png)

### Process

![](./images/ecs-task-placement-proccess.png)

### Constraints

- **distinctInstance** task place on different instance.
- **memberOf** specify type of instance task should be ran on.
  ![](./images/ecs-task-placement%20constraints.png)

### Strategies (Exam Question)

- **Binpack** _cost saving_
  ![](./images/ecs-task-placement-stratigies.png)

- **Random** _random provisioning_
  ![](./images/ecs-task-placement-stratigies-random.png)

- **Spread** _high availability_
  ![](./images/ecs-task-placement-stratigies-spread.png)

- **Mixing Strategies** _combine strategies_
  ![](./images/ecs-mix-strategies.png)
