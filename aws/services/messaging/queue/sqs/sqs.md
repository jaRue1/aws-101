# Simple Queue Service

## What is a Queue ?

- Producer sends messages into a queue
- Costumer pulls messages from a queue

  ![](./sqs-what-is-a-queue.png)

## Standard Queue

- When you see decouple applications think SQS

  ![](./sqs-standard-queue.png)

## Producers

- Uses SendMessage API
- unlimited throughput
  ![](./sqs-producing-messages.png)

## Consumers

- can receive 10 messages at a time (ReceiveMessage API)
- responsible for deleting messages Uses DeleteMessage API
- ![](./sqs-consume-messages.png)

## Multiple EC2 Instance Consumers

- at least once delivery
  ![](./sqs-mulit-ec2-consumers.png)

## ASG (Exam Question)

- ApproximateNumberOfMessages (CloudWatch Metric - Queue Length)
  ![](./sqs-asg.png)

## Decouple Application tiers ( Exam Question )

- very common architecture
  ![](./sqs-decouple.png)

## Security

![](./sqs-security.png)

## Access Policy (Exam Question)

- What is needed to publish an event to an sqs queue from s3 ?
- What is needed for sqs queue cross account access ?
  **Common Use Cases**
- cross account access
- publish s3 event notifications to sqs queue
  ![](./sqs-queue-access-policy.png)

## Message Visibility Timeout (Exam Question)

- while you receive a message it will become invisible to other consumers
  ![](./sqs-message-visibility-timeout.png)

## Message Visibility Timeout Continued (Exam Question)

- ChangeMessageVisibility API is called if consumer needs more time to process message

  ![](./sqs-message-visiblity-timeout-2.png)

  ## Dead Letter Queues

  - **MaximumReceives** is a threshold that is set for messages, once exceed it send messages to a DLQ
  - useful for debugging

    ![](./sqs-dead-letter-queue.png)

  ## Redrive to Source

  - Redrive is used to send messages back to source sqs queue.
    ![](./sqs-redrive-to-source.png)

    ## Delay Queue

    - DelaySeconds param
      ![](./sqs-delay-queue.png)

# Certified Developer SQS Concepts

## Long Polling (Exam Question)

- if **receive message wait time**is 0 the queue is (short polling)
- **consumer** should wait up to 1-20 secs to receive a message if the queue is empty (long polling)
- If a **consumer** is making **too many api calls** a way to solve that is with (long polling)
- (long polling) is used for **decreasing api calls and decreasing latency** (increasing efficiency)
- can be enable at the queue level or api level using **WaitTimeSeconds** param
  ![](./sqs-long-polling.png)

  ## SQS Extended Client

  - uses pointers
  - common use case to process video files
    ![](./sqs-extended-client.png)

## SQS API

![](./sqs-api.png)

## SQS FIFO Queue

- name must end with .fifo
- limited throughput
- used for the need to maintain ordering of messages
  ![](./sqs-fifo.png)

## FIFO Deduplication

![](./sqs-fifo-deduplication.png)

## FIFO Message Grouping

![](./sqs-fifo-messaging-group.png)

## Ordering Data into SQS

![](./ordering-data-into-sqs.png)
