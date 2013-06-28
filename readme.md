# Fourchan-URLer gem

[![Code Climate](https://codeclimate.com/github/serv/fourchan-urler.png)](https://codeclimate.com/github/serv/fourchan-urler)

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

`fourchan_url = FourchanUrler::Request.new('http://boards.4chan.org/b/res/489535242')`

#### Get board name

`fourchan_url.board # => 'b'`

#### Get thread number

`fourchan_url.thread_id # => 489535242`

## Contributing

#### Reporting issues

Please use the [GitHub issue tracker](https://github.com/serv/fourchan-urler/issues).
