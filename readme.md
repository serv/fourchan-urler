# Fourchan-URLer gem

Provide the thread number and board information given 4chan url

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

#### Initialize URL request

`fourchan_url = FourchanUrler::Request.new('http://boards.4chan.org/b/res/489535242')`

#### Get board name

`fourchan_url.board # => 'b'`

#### Get thread number

`fourchan_url.thread_id # => 489535242`

## Contributing

#### Reporting issues

Please use the [GitHub issue tracker](https://github.com/serv/fourchan-urler/issues).
