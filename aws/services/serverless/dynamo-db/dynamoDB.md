# Dynamo DB

## Traditional Architecture

![](./images/traditional-architecuture.png)

## NoSql Databases

![](./images/no-sql-db.png)

## Dynamo DB

![](./images/dynamoDB.png)

## Dynamo DB Basics

![](./images/dynamoDB-basics.png)

## Dynamo DB Primary Key (Exam Question)

### Option 1

![](./images/dynamoDB-pk.png)

### Option 2

![](./images/dynamoDB-pk-2.png)

## Dynamo DB Partition Key Exercise

![](./images/dynamoDB-pk-exercise.png)

## Dynamo DB Read / Write Capacity Modes

![](./images/dynamoDB-read-write-capacity.png)

## Provisioned

![](./images/dynamoDB-capicity-moods-provisioned.png)

## Dynamo DB Write Capacity Units (WCU) (Exam Question)

- Always be sure to have item size is a whole number (round up)
- ( num of items per sec ) \* ( item size / 1KB )
  ![](./images/dynamoDB-wcu.png)

## Strongly Consistent Reads vs Eventually Consistent Reads

![](./images/dynamoDB-scr-vs-ecr.png)

## Dynamo DB Read Capacity Units (RCU) (Exam Question)

- For Eventually Consistent Reads - divide num of items by 2
- For Strongly Consistent Reads - divide num of items by 1
- Always be sure to have item size divisible by 4 (always round up)
- ( num of items per sec ) \* ( item size / 4KB )
  ![](./images/dynamoDB-rcu.png)

## Dynamo DB Partition Internal

- WCU & RCU's are spread evenly across partitions
  ![](./images/dynamoDB-partitions-internal.png)

## Capacity Modes Throttling

![](./images/dynamoDB-throttling.png)

## Capacity Modes On Demand

![](./images/dynamoDB-capicity-moods-on-demand.png)

# Basic Api's

## Writing Data

![](./images/dynamoDB-write-data.png)

## Reading Data

![](./images/dynamoDB-read-data.png)

## Reading Data (Query)

![](./images/dynamoDB-reading-data-query.png)

![]()

## Reading Data (Scan)

![](./images/dynamoDB-reading-data-scan.png)

## Delete Data (Exam Question)

![](./images/dynamoDB-delete-data.png)

## Batch Operations

![](./images/dynamoDB-batch-operations.png)

## Local Secondary Index (LSI)

<pre>
You are working on designing a new DynamoDB table where you want to make a Query using an attribute that's NOT part of your table's Primary Key. You need to use the >= predicate while keeping the same Partition Key. What should you do to make this query efficient?

Answer: Local Secondary Index
</pre>

![](./images/dynamoDB-local-secondary-index.png)

## Global Secondary Index (GSI)

![](./images/dynamoDB-global-secondary-index.png)

## Indexes and Throttling (Exam Question)

![](./images/dynamoDB-indexes-throttiling.png)

## PartiQl

![](./images/dynamoDB-partiQl.png)

## Optimistic Locking (Exam Question)

![](./images/dynamoDB-optimistic-locking.png)

## DAX

![](./images/dynamoDB-accelerator.png)

## DAX vs ElasticCache (Exam Question)

![](./images/dynamoDB-dax-vs-elasticCache.png)

## Streams

![](./images/dynamoDB-streams.png)

## Streams Architecture

![](./images/dynamoDB-streams-2.png)

## Streams Choices (Exam Question)

![](./images/dynamoDB-streams-3.png)

## Streams & Lambda

![](./images/dynamoDB-streams-lambda.png)

## Time To Live (TTL)

- Used for session data
  ![](./images/dynamoDB-ttl.png)

## Cli Good To Know (Exam Question)

- page-size it used for optimization / and avoid timeouts
  ![](./images/dynamoDB-cli-gtk.png)

  ## DB Transactions

  ![](./images/dynamoDB-transactions.png)

  ![](./images/dynamoDB-transactions-2.png)

  ## Transactions Capacity Computation (Exam Question)

  ![](./images/dynamoDB-transactions-3.png)

  ## Session State Cache

  - ElasticCache = session state store in memory
  - Dynamo DB = auto scaling
    ![](./images/dynamoDB-session-state-cache.png)

## Write Sharding

![](./images/dynamoDB-write-sharding.png)

## Write Types

- optimistic locking = conditonal writes
  ![](./images/dynamoDB-write-types.png)

  ## Large Objects Pattern

  ![](./images/dynamoDB-large-object-pattern.png)

  ## Indexing S3 Metadata (Exam Question)

  ![](./images/dynamoDB-indexing-s3-objects-metadata.png)

  ## DB Operations

  ![](./images/dynamoDB-operations-clean-up.png)

  ## Security

  - to have Global Tables you must enable streams
    ![](./images/dynamoDB-security.png)

  ## User Interact Directly

  ![](./images/dynamoDB-users-interact-directly.png)

  ## Fine Grain Access

  ![](./images/dynamoDB-fine-grain-access-control.png)

  - You have Fine Grain Access control by using federated login and by specifying a condition on leadingKeys if you wanted to limit access at the role level or attributes if you wanted to limit access at the column level.
    ![]()
    ![]()
    ![]()
