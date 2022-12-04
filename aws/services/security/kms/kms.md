# Key Management Service KMS

## In Flight Encryption SSL

![](./images/ssl.png)

## Server Side Encryption at rest

![](./images/server-side-encryption.png)

## Client Side Encryption

![](./images/client-side-encryption.png)

## KMS (Exam Question)

- audit with CloudTrail

![](./images/kms.png)

## Key Types

- Old name (CMK)
- New name (Key Types)
- Types
  - Symmetric
  - Asymmetric -> encryption outside aws cloud

![](./images/kms-customer-master-key.png)

## KMS

- Types

  - AWS Managed Keys
  - Customer Managed Key created in KMS
  - Customer Managed Key Imported

- Automatic Key Rotation
  - Aws managed kms key automatic every 1 year
  - Customer Managed kms key automatic every 1 year (must be enabled)
  - Imported Key: only manual rotation possible using alias

![](./images/kms-continued.png)

## Copying Snapshots Across Regions

![](./images/kms-snapshots.png)

## Key Polices

![](./images/kms-key-policys.png)

## Copying Snapshots Across Accounts

![](./images/kms-snapshots-across-accounts.png)

## Encrypt and Decrypt

![](./images/kms-api-how-it-works.png)

## Envelope Encryption

- GenerateDataKey Api
- anything over 4KB needs to use Envelope Encryption
  ![](./images/kms-envelop-encryption.png)

## GenerateDataKey (Encrypt)

![](./images/kms-generate-data-api.png)

## Decrypt

![](./images/kms-envelope-data-api.png)

## Encryption SDK

![](./images/kms-encryption-sdk.png)

## API Summary

- use GenerateDataKey not GenerateDataKeyPlainText
  ![](./images/kms-symmetric-summary.png)

## KMS Limits

How to handle quota limits

- exponential back off
- reduce api call sent into kms by using envelope encryption
- request limit increase from AWS
  ![](./images/kms-req-quotas.png)

## KMS Request Quotas

![](./images/kms-req-quotas-2.png)

##

![]()

##

![]()

##

![]()

##

![]()

##

![]()
