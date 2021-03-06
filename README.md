# Kele :beers:

Kele A Ruby Gem API client that allows authorized users to access the Bloc API.

With this gem, if you are a Bloc student, you can...

1. Get your user name and enrollment info
2. Check your mentor availability
3. Se your course roadmaps
4. Submit assignments through the command line
5. Read, send and receive messages

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kele'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install kele
```

## Usage example

Run irb or pry and require your gem in the library

```
$ irb
>> require './lib/kele.rb'
=> true
>> Kele.new("jane@gmail.com", "abc123")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/omar.aguinaga94/kele>.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
