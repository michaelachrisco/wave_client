# WaveClient

(Very) small client around http://wave.webaim.org
For more details: http://wave.webaim.org/api/details
Gem is untested and is a quick wrapper around HTTParty.

This can be used to create reports on WCAG 2.0 and Section 508 compliance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wave_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wave_client

## Usage

WAVE API Registration: http://wave.webaim.org/api/register
```ruby
wave = WaveClient.new('token', 'google.com', 3)
#Full request
wave.request

wave.status
wave.statistics
wave.categories
```

JSON report:
```ruby
require 'wave_client'
require 'json'
wave = WaveClient.new('token', 'google.com', 3)
File.open("error.json","w") do |f|
    f.write(JSON.pretty_generate(wave.categories))
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/michaelachrisco/wave_client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
