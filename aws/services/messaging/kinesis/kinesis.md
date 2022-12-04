# Kinesis

## Overview

![](./kinesis.png)

## Data Streams Overview

- streams are made of shards
- shards define stream capacity in terms of ingestion and consumption rate
- **producers** send data into streams
- records are made of partition key and data blob
- **consumers** receive partition key, seq number, data blob
  ![](./kinesis-data-streams.png)

## Data Streams Continued

![](./kinesis-data-streams-2.png)

## Capacity Modes

- if you don't know your capacity in advanced go on demand
- if you do know your capacity in advanced go provisioned
  ![](./kinesis-data-stream-capacity-modes.png)

  ## Security

  ![](./kinesis-data-streams-security.png)

  ## Kinesis Producers

  - PutRecord API
  - avoid hot partition by having highly distributed partition key
  - 6 shards & 10,000 users with unique userId as partition key (highly distributed)
  - 6 shards & 3 web browser names as the partition key (not highly distributed)
    ![](./kenesis-producer.png)

    ![](./kinesis-producers-diagram.png)

## Provision Throughput Exceeded (Exam Question)

- ![](./kenisis-thoughput-exeeded.png)

## Consumers

![](./kinesis-data-streams-consumers.png)

## Custom Consumers

- GetRecords API
- SubscribeToShard API
  ![](./kenisis-consumers-custom.png)

## Consumer Types

- Pull model ($)
- Push model ($$$$)

  ![](./kenisis-consumer-types.png)

## Lambda

![](./kinesis-consumer-lambda.png)

## Kinesis Client Library

![](./kinesis-client-library.png)

## Kinesis Client Library 4 Shards

![](./kcl-4-shards.png)

## Kinesis Client Library 4 Shards Scaling KCL APP

![](./kcl-4-shards-scaling-kcl-app.png)

## Kinesis Client Library 6 Scaling Kinesis

![](./kcl-6-shards-scaling-kinesis.png)

## Kinesis Client Library 6 Shards Scaling KCL APP

![](./kcl-6-shard-scaling-kcl-app.png)

# Kinesis Operations

## Shard Splitting

![](./kinesis-shard-splitting.png)

## Merging Shards

![](./kinesis-shard-merging.png)

## Kinesis Data Firehose

- AWS Destinations
  - s3
  - redshift (copy from s3)
  - ElasticSearch
    ![](./kinesis-data-firehose.png)

![](./kinesis-data-firehose-2.png)

## Kinesis Data Stream vs Kinesis Data Firehose

![](./kinesis-data-stream-vs-fire-hose.png)

## Kinesis Data Analytics

![](./kinesis-data-analytics.png)

## Kinesis Data Analytics Continued

![](./kinesis-data-anaytics-2.png)

## Kinesis Data Analytics Apache Flink

Java or Scala or SQL to process & analyze streaming data

- Flink does not read from FireHose
- used for compute resources, parallel computation, automatic scaling

## Ordering Data into Kinesis

![](./ordering-data-into-kinesis.png)

## Ordering Data into SQS

![](./ordering-data-into-sqs.png)

## Kinesis vs SQS

![](./sqs-vs-kinesis.png)

## SQS vs SNS vs Kinesis

![](../sqs-vs-sns-kinesis.png)
