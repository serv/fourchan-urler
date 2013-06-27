require 'uri'

module FourchanUrler
  class Request
    attr_accessor :thread_id, :board
    
    def initialize(url)
      uri = URI(url)
      if uri.host == "boards.4chan.org"
        @thread_id = url[/(\d{3,})/].to_i
        @board = url[/\/[a-z]+\//][/[a-z]+/]
      else
        raise ArgumentError, 'URL is incorrect. Please use 4chan thread URL.'
      end
    end
  end
end