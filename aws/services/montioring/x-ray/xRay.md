# X-Ray

![](./x-ray.png)

![](./x-ray-continued.png)

## Advantages

![](./x-ray-advantages.png)

## Compatibility

![](./x-ray-compatibilty.png)

## Tracing

![](./x-ray-tracing.png)

## Enable it ? (Exam Question)

- common question
  - x-ray application works locally but when deployed to EC2 it does not why ?

-> code + x-ray sdk -> x-ray daemon running on machine -> send batch every second

- for elastic benstalk how you enable x-ray is through the ebxentions file
  ![](./x-ray-enable-it.png)

## Magic

![](./x-ray-magic.png)

## Trouble shooting (Exam Question)

![](./x-ray-troubleshooting.png)

## X-Ray Instrumentation in code

![](./x-ray-instrumentation.png)

## Concepts

![](./x-ray-concepts.png)

## Sampling Rules

![](./x-ray-sampling-rules.png)

## Custom Sampling Rules

![](./x-ray-custom-sampling-rules.png)

## Write Api

![](./x-ray-write-api.png)

## Read Api

![](./x-ray-read-api.png)

## XRay + BeanStalk

![](./x-ray-elastic-beanstalk.png)

### Required Actions XRay + BeanStalk Within Xray Policy

- GetSamplingRules
- GetSamplingStatisticsSummaries
- GetSamplingTargets
- PutTelemetryRecords
- PutTraceSegments

## XRay + ECS integration options

![](./x-ray-integration-options.png)

## XRay + ECS task definition (side car pattern)

- you need to map the container port of the x-ray daemon 2000 udp
- set env var called AWS_XRAY_DAEMON_ADDRESS
- link containers on network
- ![](./x-ray-ecs-task-defintion.png)
  ![]()
  ![]()
  ![]()
