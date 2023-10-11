# AttrInquirer

This is a Ruby gem that enhances string functionality by providing an attribute inquirer pattern. It allows you to define attributes and query their states using a convenient syntax.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'attr_inquirer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attr_inquirer

## Usage

```ruby
require 'attr_inquirer'

class MyClass
  attr_inquirer :status

  def initialize
    @status = 'active'
  end
end

my_instance = MyClass.new
puts my_instance.status.active?   # Output: true
puts my_instance.status.inactive? # Output: false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/attr_inquirer.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
