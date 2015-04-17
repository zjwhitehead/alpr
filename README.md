# Alpr

Tiny rubygem wrapping [openALPR](https://github.com/openalpr/openalpr)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alpr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alpr

## Usage

```ruby
search = Alpr.new("lc.jpg")
puts search.output
```

## Contributing

1. Fork it ( https://github.com/amonks/alpr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
