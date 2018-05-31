# Alpr [![Gem](https://img.shields.io/gem/v/alpr.svg?style=plastic)](https://rubygems.org/gems/alpr)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr?ref=badge_shield)

Tiny rubygem wrapping [openALPR](https://github.com/openalpr/openalpr).

You'll need to install openALPR. I used `brew install homebrew/science/openalpr`, on osx.

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

For USA license plates
specify an optional state pattern (eg. Ohio = "oh" )
```ruby
search = Alpr.new("lc.jpg", :us, "oh")
puts search.output
```


## Contributing

1. Fork it ( https://github.com/amonks/alpr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr?ref=badge_large)