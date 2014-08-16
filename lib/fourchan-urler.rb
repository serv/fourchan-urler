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
    ["a", "b", "c", "d", "e", "f", "g", "gif", "h", "hr", "k", "m", "o", "p", "r", "s", "t", "u", "v", "vg", "vr", "w", "wg", "i", "ic", "r", "k", "s", "s", "cm", "hm", "lgbt", "y", "adv", "an", "asp", "biz", "cgl", "ck", "co", "diy", "fa", "fit", "gd", "hc", "int", "jp", "lit", "mlp", "mu", "n", "out", "po", "pol", "sci", "soc", "sp", "tg", "toy", "trv", "tv", "vp", "wsg", "x"]
  end
end
