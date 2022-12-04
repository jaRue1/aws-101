# API Gateway

## Overview

![](./images/build-serverless-api.png)

## API Gateway

![](./images/api-gateway.png)

## Integrations High Level

![](./images/api-gateway-integrations-hgh-lvl.png)

## API Gateway - AWS Service Integration

client -> api gateway -> kinesis data streams -> kinesis data firehose -> s3

- client -> sends request
- api gateway -> send data
- kinesis data stream -> sends records
- s3 -> stores json files

## Endpoint Types

![](./images/api-gateway-endpoint-types.png)

## Security

- Custom Domain Name Https security through integration with ACM (Certificate Manager)
- If using Edge Optimized endpoint, there the certificate must be in us-east-1
- if using regional endpoint, the certificate must be in the api gateway region
- must setup cnmae or a-alias record in route 53
  ![](./images/api-gateway-security-summary.png)

## Api Gateway

![](./images/api-gateway-deployment-stages.png)

## Breaking Changes

![](./images/api-gateway-stages-v1-v2.png)

## Stage Variables

![](./images/api-gateway-stage-vars.png)

## Stage Variables & Lambda Alias

![](./images/api-gateway-stage-vars-lambda-alias.png)

## Canary Deployment

![](./images/api-gateway-canary-deployment.png)

## Integration Types

![](./images/api-gateway-intergration-types.png)

## Integration Types (Lambda Proxy)

![](./images/api-gateway-intergration-types-2.png)

## Integration Types (HTTP Proxy)

![](./images/api-gateway-intergration-types-3.png)

## Mapping Templates

- VTL velocity template language
  ![](./images/api-gateway-mapping-templates.png)

## SOAP API XML

![](./images/api-gateway-json-xml-soap.png)

## Mapping Query String

![](./images/api-gateway-query-string-params.png)

## Swagger / Open Api

![](./images/api-gateway-swagger-open-api-spec.png)

## Cacheing Api Responses

![](./images/api-gateway-cacheing-res.png)

## Cache Invalidations

![](./images/api-gateway-cache-invalidation.png)

## Usage Plans & Api Keys

![](./images/api-gateway-usage-plan-api-keys.png)

## Correct Order for Api Keys

- order matters !
  ![](./images/api-gateway-order-for-api-keys.png)

## Logging & Tracing

![](./images/api-gateway-logging-tracing.png)

## CloudWatch Metric (Exam Question)

- max amount of time any api gateway can preform any request is 29 seconds
- anything over 29 seconds will trigger a timeout error

  ![](./images/api-gateway-cloudwatch-metrics.png)

## Gateway Throttling

![](./images/api-gateway-throttling.png)

## Errors

- 4XX errors client side
- 5XX errors server side
  ![](./images/api-gateway-errors.png)

## CORS (Exam Question)

![](./images/api-gateway-cors.png)

## CORS Enabled (Exam Question)

![](./images/api-gateway-cors-enabled.png)

## IAM Permissions

![](./images/api-gateway-security.png)

## Resource Policies

![](./images/api-gateway-resource-policy.png)

## Cognito User Pool

![](./images/api-gateway-user-pools.png)

## Lambda Authorizer

![](./images/api-gateway-authorizer.png)

## Security Summary

![](./images/api-gateway-security-summary.png)

## HTTP API vs REST API

[Offical AWS Docs HTTP APIs vs REST APIs ](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-vs-rest.html)

- HTTP low cost alternative,only supports proxy integrations, does not support usage plans and API keys
  ![](./images/api-gateway-http-vs-rest.png)

## Websocket Api

- stateful application use cases
- mainly used for two way communication
  ![](./images/api-gateway-websocket.png)

## Connecting to Websocket Api

![](./images/api-gateway-connecting-to-api.png)

## Connection ID

![](./images/api-gateway-connectionID.png)

## Server to Client Messaging

![](./images/api-gateway-server-to-client-messaging.png)

## Connection Url Operations

![](./images/api-gateway-connection-urls-ops.png)

## Websocket API Routing

- route selection expression is an exam question
- used to route to a specific backend based on routing expression (action)
- connection is already open
- routing should be apart incoming data message
  ![](./images/api-gateway-websocket-api-routing.png)

## Architecture

![](./images/api-gateway-architecture.png)
