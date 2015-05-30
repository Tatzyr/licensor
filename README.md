# Licensor

Create LICENSE file into your project.


## Usage

```
$ licensor --list
$ licensor show zlib -n "John Doe"
$ licensor create bsd
```

### Commands
  * `-l`, `--list`: See all available licenses.
  * `-v`, `--version`: Print the version.
  * `create <LICENSE>`: Create a license file.
  * `help [COMMAND]`: Describe available commands or one specific command.
  * `show <LICENSE>`: Show a license text.


### Options:
  * `-y`, `--year <YEAR>`: The year to use. Default value is this year.
  * `-n`, `--name=NAME`: The name to use. Default value is obtained from git.

## Installation

```
$ gem install licensor
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec licensor` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tatzyr/licensor.


## Licence

See [LICENSE]().


## Author

[OTSUKA Tatsuya](https://github.com/tatzyr)
