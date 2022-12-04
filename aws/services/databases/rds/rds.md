# RDS Relational Database Service

![rds](./images/rds-vs-ec2.png)

## RDS vs EC2

![rds vs ec2](./images/rds-vs-ec2.png)

## RDS Backups

![rds backups](./images/rds-backup.png)

## RDS Storage Auto Scaling (exam question)

![](./images/rds-auto-scaling.png)

## RDS Read Replicas for read scalability (exam question)

3 Options for Read Replicas (up to 5)

1. Within a AZ
2. Cross AZ
3. Cross Region

![RDS Read Replicas](./images/rds-read-replica.png)

## RDS Read Replicas Uses Cases

![Read Replicas Uses Cases](./images/read-use-cases.png)

## RDS Read Replicas Network Cost

![Network Cost](./images/read-replicas-network-cost.png)

## RDS Disaster Recovery Multi AZ

![Disaster Recovery](./images/disater-recovery.png)

<pre>Exam Question: Can you set up your read replicas as Multi AZ for DR ?</pre>

<pre>Answer: Yes </pre>

## From Single AZ to Multi AZ (exam question)

![Single AZ to Multi AZ](./images/single-az-multi-az.png)

## RDS Security

![RDS Security](./images/rds-security.png)

## RDS Encryption (exam question)

![RDS Encryption](./images/rds-encryption.png)

<pre>Exam Question: Can you encrypt read replicas if the master is NOT encrypted.</pre>

<pre>Answer: No </pre>

<pre>Exam Question: Can you copy a snapshot of an un-encrypted database into an encrypted one ?</pre>

<pre>Answer: Yes </pre>

## Network & IAM Security

![Network & IAM Security](./images/rds-network-iam-sec.png)

## IAM Authentication

![IAM Auth](./images/rds-iam-auth.png)

## RDS Security Summary

![Security Summary](./images/rds-sec-summary.png)

<pre>
Multi Az
When using this feature you do not need to update the SQL connection string.

Multi Az Sync Replication 
Read Replica Async Replication

IAM Auth does not work with ORACLE.
</pre>
