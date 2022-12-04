## Cloud Watch

## Metrics

![](./cloud-watch-metrics.png)

## EC2

![](./cloud-watch-ec2-monitoring.png)

## Custom Metrics

- check cli docs put-metric-data [here]('https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/put-metric-data.html')

- Note : A CloudWatch Alarm set on a High-Resolution Custom Metric can be triggered as often as 10 seconds
  ![](./cloud-watch-custom-metrics.png)

## CloudWatch Logs

- CloudWatch Logs, Log Retention Policy defined at Log group level.
  ![](./cloud-watch-logs.png)

## Sources

![](./cloud-watch-logs-source.png)

## Metric Filter and Insights

![](./cloud-watch-metric-filter-insights.png)

## s3 Export

![](./cloud-watch-logs-s3-export.png)

## Subscriptions

![](./cloud-watch-logs-subscriptions.png)

## Log Aggregation

![](./cloud-watch-logs-aggregation.png)

## Logs for EC2

![](./cloud-watch-logs-ec2.png)

## Logs Agent (Old) & Unified Agent (New)

- unified agent can do both (hence the name unified)
  ![](./cloud-watch-logs-agent-unified-agent.png)

## Unified Agent Metrics (New)

- think more granular for this tool
  ![](./cloud-watch-unified-agent-metrics.png)

  ## Metrics Filter

  - [filter & syntax patterns](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html)

    ![](./cloud-watch-logs-metric-filter.png)

## Alarms

![](./cloud-watch-alarms.png)

## Alarm Targets

![](./cloud-watch-alarm-targets.png)

## Composite Alarms

- CloudWatch Alarms monitor a single metric
- Composite Alarms Monitor the state of multiple alarms
  - you can use AND and OR conditions
  - helpful to reduce 'alarm noise' by creating complex composite alarms

## Instance Recovery

![](./cloud-watch-ec2-instance-recovery.png)

## Good to know

[set alarm state](https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/set-alarm-state.html)

![](./cloud-watch-alarms-good-to-know.png)

## Events

![](./cloud-watch-events.png)

## Logs Encryption

![](./logs-encryption.png)
