# NineToFive

Rails plugin to enforce business hours.

## Usage

To customize the response for outside of business hours, add the following to an intializer.

```ruby
NineToFive.start_hour = 9
NineToFive.end_hour = 17
NineToFive.response = "Please come back during business hours."
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "nine_to_five"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install nine_to_five
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
