# bqueue

super simple implementation of a bounded queue, using an underlying array

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     bqueue:
       github: UlisseMini/bqueue
   ```

2. Run `shards install`

## Usage

```crystal
require "bqueue"

# 2 is the max size for the queue, counting from zero
bq = BQueue::BQueue.new(2)

bq.push 1 # [1]
bq.push 2 # [1, 2]
bq.push 3 # [2, 3]
bq.push 4 # [3, 4]

# now we get values back from the queue
bq.pop # 4
bq.pop # 3
bq.pop # Error: Index out of bounds
```

## Contributing

1. Fork it (<https://github.com/UlisseMini/bqueue/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Ulisse Mini](https://github.com/UlisseMini) - creator and maintainer
