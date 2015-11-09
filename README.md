# Licenza

[![Gem Version](https://badge.fury.io/rb/licenza.svg)](http://badge.fury.io/rb/licenza)
[![Code Climate](https://codeclimate.com/github/Tatzyr/licenza/badges/gpa.svg)](https://codeclimate.com/github/Tatzyr/licenza)
[![Dependency Status](https://gemnasium.com/Tatzyr/licenza.svg)](https://gemnasium.com/Tatzyr/licenza)


Create LICENSE file into your project.

![create-demo](https://cloud.githubusercontent.com/assets/1025461/7900296/ab43db5a-0788-11e5-9e61-7a3366ff460d.gif)


## Usage
### Commands

* `licenza create <LICENSE>`: Create a license file.
* `licenza help [COMMAND]`: Describe available commands or one specific command.
* `licenza list`: See all available licenses.
* `licenza show <LICENSE>`: Show a license text.
* `licenza version`: Print the version.


### Options
* `-f`, `--filename <FILENAME>`: The output filename. Default value is `LICENSE'.
* `-n`, `--name <NAME>`: The name to use. Default value is obtained from git.
* `-y`, `--year <YEAR>`: The year to use. Default value is this year.

### Demo

![options-demo](https://cloud.githubusercontent.com/assets/1025461/7900297/b8a3e45c-0788-11e5-892f-f0670ea3593f.gif)

![default-demo](https://cloud.githubusercontent.com/assets/1025461/7900299/c699421e-0788-11e5-8354-9cbbc4318f91.gif)

## Installation

```
$ gem install licenza
```

## Available Licenses

Run `licenza list` to see all available licenses.

* apache
* artistic
* bsd
* eclipse
* gpl
* lgpl
* mit
* mozilla
* nysl
* zlib
* no-license
* unlicense


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec licenza` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Tatzyr/licenza.


## Licence

See [LICENSE](LICENSE).


## Author

[Tatsuya Otsuka](https://github.com/Tatzyr)
