# Fourchan-URLer gem

An easy-to-use gem that provides the thread number and the board name given 4chan thread url

## Installation

### Using Gemfile

In your Gemfile

`gem 'fourchan-urler'`

Then in your terminal

`bundle install`

### Not using Gemfile

In your terminal

`gem install fourchan-urler`

## Usage

#### Testing the gem out in IRB

`irb`

`require 'rubygems' # => true`

`require 'fourchan-urler' # => true`

You are ready to use Fourchan-URLer gem in IRB

#### Initialize URL request

`4chan_url = FourchanUrler::Request.new('http://boards.4chan.org/b/res/489535242')`

#### Get board name

`4chan_url.board # => 'b'`

#### Get thread number

`4chan_url.thread_id # => 489535242`

## Contributing

#### Reporting issues

Please use the [GitHub issue tracker](https://github.com/serv/fourchan-urler/issues).
