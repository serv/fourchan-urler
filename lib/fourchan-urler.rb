require 'uri'
require 'extensions/strings'

module FourchanUrler
    
  class Request
    attr_accessor :thread_id, :board
    
    def initialize(url)
      uri = URI(url)
      if uri.host == "boards.4chan.org" && uri.path.path_check
        @thread_id = url[/(\d{3,})/].to_i
        @board = url[/\/[a-z]+\//][/[a-z]+/]
      else
        raise ArgumentError, 'URL is incorrect. Please use 4chan thread URL.'
      end
    end
  end
  
  def self.request(url)
    self::Request.new(url)
  end
  
  def self.boards_list
    ["a", "b", "c", "d", "e", "f", "g", "g", "i", "f", "h", "h", "r", "k", "m", "o", "p", "r", "s", "t", "u", "v", "v", "g", "v", "r", "w", "w", "g", "i", "i", "c", "r", "k", "s", "s", "c", "m", "h", "m", "l", "g", "b", "t", "y", "a", "d", "v", "a", "n", "a", "s", "p", "c", "g", "l", "c", "k", "c", "o", "d", "i", "y", "f", "a", "f", "i", "t", "g", "d", "h", "c", "i", "n", "t", "j", "p", "l", "i", "t", "m", "l", "p", "m", "u", "n", "o", "u", "t", "p", "o", "p", "o", "l", "s", "c", "i", "s", "o", "c", "s", "p", "t", "g", "t", "o", "y", "t", "r", "v", "t", "v", "v", "p", "w", "s", "g", "x"]
  end
end