# Amazon ElastiCache

![](./images/elasti-cache.png)

## Solution Architecture - DB Cache

![](./images/db-cache.png)

## Solution Architecture - User Session Store

![](./images/user-session-store.png)

## Redis vs Memcached (exam question)

![](./images/redis-vs-memcached.png)

<pre> 
Redis - > High Availability, Back Up, Read Replica
Memcached - > Pure cache distribution
</pre>

## Cache Security

![](./images/cache-sec.png)

## Replication Cluster Mode Disabled (exam question)

![](./images/cluster-mode-disable.png)

## Replication Cluster Mode Enabled (exam question)

![](./images/cluster-mode-enabled.png)

## Caching Implementation Considerations

![](./images/considerations.png)

[Read More](https://aws.amazon.com/caching/best-practices/ "AWS Caching")

### Lazy Loading - Cache-Aside - Lazy Population (exam ?)

![](./images/lazyL-cache-lazyP.png)

#### Lazy Loading - Cache-Aside - Lazy Population

### Python Pseudos code

![](./images/python-psuedo.png)

### Write Through - Add or Update cache when db is updated

![](./images/write-through-or-add.png)

## Write Through - Python Pseudos code

![](./images/python-pseudo-wt.png)

## Cache Evictions and Time to live (TTL)

![](./images/evictions-%26-TTL.png)

## Words of Wisdom

![](./images/summary.png)

Cached Evictions -> You have noticed that there are a large number of requests that go to the database because a large number of items are removed from the cache before they expire.

Cache Invalidations ->
