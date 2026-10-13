# Alpr [![Gem](https://img.shields.io/gem/v/alpr.svg?style=plastic)](https://rubygems.org/gems/alpr) [![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr?ref=badge_shield)
[![CircleCI](https://circleci.com/gh/zjwhitehead/alpr/tree/master.svg?style=svg)](https://circleci.com/gh/zjwhitehead/alpr/tree/master)

**Unmaintained.** Read the plate with a small vision model.

I used to maintain this gem. It wraps [OpenALPR](https://github.com/openalpr/openalpr): a native install, a country runtime, and a state pattern. A small model that can see the photo returns the plate number from the image. Run it locally so the plate stays on your machine.

[Gemma 4 E4B](https://ollama.com/library/gemma4:e4b) is the size to start with. With [Ollama](https://ollama.com/):

```
ollama run gemma4:e4b ./lc.jpg Read the license plate. Reply with the plate number only.
```

Put the image path before the prompt. Try it on a few of your own photos before you trust the string.

## Legacy: OpenALPR wrapper

You'll need to install openALPR. I used `brew update && brew install openalpr`, on macOS.

For Linux see the [official wiki](https://github.com/openalpr/openalpr/wiki/Compilation-instructions-(Ubuntu-Linux))

## Installation

Requires Ruby version 2.3 or higher

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

1. Fork it ( https://github.com/zjwhitehead/alpr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
