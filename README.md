# Spider::Src

Spider source files in a gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spider-src'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spider-src

## Usage


```ruby
require 'spider-src'

p Spider::Src.js_path  # => #<Pathname:/path/to/cli.js>
p Spider::Src.version  # => "0.0.1"
```

## Contributing

1. Fork it ( https://github.com/alinbsp/spider-src/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
