# Challonge-API-Wrapper

Ruby API Wrapper for [Challonge](https://challonge.com/)

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add challonge

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install challonge

## Usage

### Tournament
https://api.challonge.com/v1/documents/tournaments/index#

List all tournament
```ruby
Challonge::Tournament.all
```
filter all tournament using parameters

```ruby
Challonge::Tournament.all(args: {state: 'ended'})
```

Find tournament by id
```ruby
Challonge::Tournament.find_by_id(id: 1)
```
Create new tournament
Currently only accepts name as parameter
```ruby
Challonge::Tournament.create(name: 'My-Tournament')
```
Edit Tournament
Can only edit the tournament name
```ruby
Challonge::Tournament.update(id: 1, name: 'Tournament')
```
Delete Tournament
```ruby
Challonge::Tournament.delete(id: 1)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luhluh/challonge. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/luhluh-17/challonge/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Challonge project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/luhluh-17/challonge/blob/main/CODE_OF_CONDUCT.md).
