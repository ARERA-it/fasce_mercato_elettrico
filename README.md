# Fasce Mercato Elettrico italiano

Gem with a pair of class method used to check if a given date is an holiday (in Italy) and get the 'fascia oraria' based on [ARERA](https://www.arera.it/) (formerly AEEG and AEEGSI) and [GME](https://www.mercatoelettrico.org/) definitions of a given hour (date + hour).

The gem use the [Ruby Holidays Gem](https://github.com/holidays/holidays) to check holidays.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fasce_mercato_elettrico'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fasce_mercato_elettrico

## Usage

Check if a date fall in holiday (or Sunday):
```ruby
christmas_day_2018 = Date.civil(2018, 12, 25)
FasceME.holiday? christmas_day_2018 # => true
```

Get the 'fascia oraria' based from ARERA definitions (F1, F2 or F3):
```ruby
dt = Time.new(2018,8,7,9)
FasceME.fascia_arera(dt).to_s # => "F1"
```
Get the 'fascia oraria' based from GME definitions (Peak or Off-Peak):
```ruby
dt = Time.new(2018,8,7,9)
FasceME.fascia_gme(dt).to_s # => "1"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/arera-it/fasce_mercato_elettrico. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FasceMercatoElettrico project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/arera-it/fasce_mercato_elettrico/blob/master/CODE_OF_CONDUCT.md).
