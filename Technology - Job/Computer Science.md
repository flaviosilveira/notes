# Hard things in Computer Science
SOURCE https://dev.to/nfrankel/hard-things-in-computer-science-4d0k


## Cache invalidation
"In essence, the smaller the TTL, the less chance to read stale data, but the less useful is the cache."

## Naming Things 

I always cautioned about the following issues when talking with the business:

- Using different words to cover the same reality
- Using the same word to cover different realities

## Distributed Systems

### Dual Writes
Need to write in two different storages.

While working on this problem, I discovered Change-Data-Capture. The idea behind CDC is to send updates to a single store and stream the diffs of the new state to the other one

### Leader Election

One of the nodes in a distributed system need to be a leader. Leaderless Implementations are less reliable.
Algorithms to decide leader: Paxos, Raft.
