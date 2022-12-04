# Lambda

## What is serverless

![](./images/what-is-serverless.png)

## Serverless in AWS (Exam Question)

![](./images/serveless-on-aws.png)

## Lambda

![](./images/lambda.png)

## Benefits of Lambda

![](./images/lambda-benifits.png)

## Language Support

![](./images/lambda-lang-support.png)

## Main Integrations

![](./images/lambda-intergrations-main-ones.png)

## Example Serverless Thumbnail Creation

![](./images/lambda-example-thumbnail-creation.png)

## Serverless Cron Job

![](./images/lambda-severless-cron-job.png)

## Lambda Pricing

[official lambda pricing](https://aws.amazon.com/lambda/pricing/)

![](./images/lambda-pricing.png)

## Synchronous Invocations

- Synchronous -> direct invocation that you wait the result of.
  ![](./images/lambda-synchronous-invocations.png)

## Synchronous Invocations Services

![](./images/lambda-synchronous-invocation-services.png)

## CLI CMD Synchronous Invocations

```
aws lambda invoke --function-name demo-lambda --cli-binary-format raw-in-base64-out --payload '{"key1": "value1", "key2": "value2", "key3": "value3" }' --region us-east-1 response.json
```

## Lambda Integration with ALB (Exam Question)

![](./images/lambda-alb.png)

## ALB to Lambda: HTTP to JSON (Exam Question)

- Query String Parameters, Headers and Body are all converted
- Query String Parameters, Headers are KEY / VALUE PAIRS
  ![](./images/alb-lambda-http-json.png)

## Lambda to ALB : JSON to HTTP (Exam Question)

![](./images/lambda-alb-conversions-json-http.png)

## Multi Headers Values (Exam Question)

- This is how we support multi header values
  ![](./images/alb-multi-header-values.png)

## Lambda @ Edge

- Know this at a high lvl for exam

![](./images/lambda-%40-edge.png)

## Lambda @ Edge Continued

- Know this at a high lvl for exam

![](./images/lambda-%40-edge-continued.png)

## Global Application

- Know this at a high lvl for exam

![](./images/lambda-%40-edge-global.png)

## @ Edge Use Cases

- Know this at a high lvl for exam
  ![](./images/lambda-%40-edge-use-cases.png)

## Async Invocations

- idempotent -> incase of retries the output is the same
- you want your lambda function to have idempotent behavior
- Async Invocations can be used to increase processing speed
  ![](./images/lambda-async-invocations.png)

## Async Invocations Services

![](./images/lambda-async-invocation-services.png)

## EventBridge / CloudWatch

![](./images/lambda-cloud-watch-events.png)

## S3 Event Notifications

![](./images/lambda-s3-event-notifications.png)

## S3 Event Metadata Pattern Sync

![](./images/lambda-simple-s3-event-pattern-matadata-sync.png)

# Event Mappers

## Event Source Mapping (Exam Question)

- Synchronous Invocation
  ![](./images/lambda-event-soruce-mapping.png)

## Event Source Mapping Streams (Dynamo DB || Kinesis) (Exam Question)

- Synchronous Invocation
  ![](./images/lambda-streams-kinesis-dynamo-db.png)

## Error Handling Event Source Mapping Streams (Exam Question)

![](./images/lambda-streams-error-handling.png)

## Event Source Mapping Queue (Exam Question)

- Synchronous Invocation
  ![](./images/lambda-sqs-sqs-fifo-event-sorce-mapping.png)

  ## Queue & Lambda (Exam Question)

  ![](./images/lambda-queues.png)

## Event Mapper Scaling (Exam Question)

![](./images/lambda-event-mapper-scaling.png)

## Lambda Destinations

[Official Async Invocation Docs ](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html)

[Official Event Source Mapping Docs](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html)

![](./images/lambda-destinations.png)

## Lambda Execution Role

- lambda function invoked by event source mapping meaning lambda is reading the data. Or lambda function invokes other services
  ![](./images/lambda-exec-role.png)

## Lambda Resource Bases Policy

- other resources / services invoking lambda function
  ![](./images/lambda-resource-based-policy.png)

  ## Lambda Env Vars

  ![](./images/lambda-env-vars.png)

  ## Lambda Logging & Monitoring

  ![](./images/lambda-logging-monitoring.png)

  ## Lambda Active Tracing (Exam Question)

- AWS_XRAY_DAEMON_ADDRESS, where the ip and port of the x-ray daemon is running
  ![](./images/lambda-tracing-x-ray.png)

## Lambda By Default

![](./images/lambda-default.png)

## Lambda Vpc

- Needs the AWSLambdaVPCAccessExecution Role Attach to Lambda
- Also needs the LambdaENIManagementAccess Role Attach

![](./images/lambda-vpc.png)

## Lambda Internet Access

- this is configured through route tables and vpc config
  ![](./images/lambda-vpc-internet.png)

  ## Lambda Function Configuration (Exam Question)

  - anything that can be completed between 0 - 15 minutes is good for lambda
  - if not use services like fargate and ecs

  - if you need a faster cpu or more cpu cores, you accomplish this by increasing the memory option. THere is no option to increase cpu independent of memory.
  - for timeouts you want to set a time that is reasonable. b/c you want it to fail in a reasonable so that you can analyze that error case at the time it happens. This will also prevent unwanted retries.
    ![](./images/lambda-config.png)

## Execution Context

![](./images/lambda-exec-context.png)

## Initialize Outside Handler

- so that DB connection is only established once.
  ![](./images/initailize-outside-hondler.png)

## Functions /tmp space

![](./images/lambda-func-tmp-space.png)

## Lambda Concurrency & Throttling

![](./images/lambda-concurency-throttling.png)

## Lambda Concurrency Issues

- Concurrency applies to all the functions within your account
- So if one function goes over the limit all the others get throttled
- Throttling error code 429
- System error code 500-series
  ![](./images/lambda-concurrency-issue.png)

  ## Concurrency Async Invocations

  -retry interval will increase in exponential back off fashion
  ![](./images/lambda-concurrency-async-invocations.png)

  ## Cold Starts Provisioned Concurrency

  [Official Provisioned Concurrency Improvements ](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/)

  ![](./images/lambda-cold-start-provisioned-concurrency.png)

  ## Reserved Concurrency vs Provisioned Concurrency

  [Official Reserved Concurrency ](https://docs.aws.amazon.com/lambda/latest/dg/configuration-concurrency.html)

  **Concurrency Error Message**

  - Calling the invoke API action failed with this message: Rate Exceeded

  ![](./images/lambda-reserved-provisoned-concurrency.png)

  ## Lambda Function Dependencies

  ![](./images/lambda-func-dep.png)

  ## Lambda & CloudFormation

  ![](./images/lambda-cloud-formation.png)

  ## Lambda & CloudFormation through s3

  ![](./images/lambda-cloud-formation-s3.png)

  ## Lambda & CloudFormation through s3 milt Account

  - bucket policy -> allow resource from different accounts access to bucket
  - execution role -> allow get and list commands
    ![](./images/lambda-cloud-formation-s3-multi-accounts.png)

    ## Lambda Layers

    - use when you need to reuse libraries
    - used to deploy functions faster / no need to repackage dependencies when using layers
    - Also multiple function can reference the same layers

      [Rust Lambda Run Time](https://github.com/awslabs/aws-lambda-rust-runtime)

      [C++ Lambda Run Time](https://github.com/awslabs/aws-lambda-cpp)
      ![](./images/lambda-layers.png)

## Container Images

![](./images/lambda-container-img.png)

## Container Images Continued

![](./images/lambda-container-img-2.png)

## Lambda Version

- $LATEST is mutable
- Version is Immutable
  ![](./images/lambda-versions.png)

# Lambda Aliases (Exam Question)

- Aliases is mutable
- Enable Blue Green Deployments
- Aliases **cannot** reference other aliases
  ![](./images/lambda-aliases.png)

  ## Lambda CodeDeploy

  ![](./images/lambda-code-deploy.png)

  ## Lambda Limits (Exam Question)

  - limits are **per region**
  - if use cases exceed these limits then lambda is not the right solution
    ![](./images/lambda-limits-per-region.png)

## Best Practices

- avoid recursive code -> lambda should never call itself
  ![](./images/lambda-best-practices.png)
