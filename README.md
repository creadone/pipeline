# pipeline

TODO: Write a description here

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  pipeline:
    github: creadone/pipeline
```

## Usage

```crystal
require "pipeline"
```

```crystal
require "pipeline"

class Worker < Pipeline::Worker
  def execute
    puts self.class
  end
end

pipeline = Pipeline::Tube.new.tap do |t|
  t << Worker.new
end

result = pipeline.execute(data)
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/pipeline/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [creadone](https://github.com/creadone) creadone - creator, maintainer
