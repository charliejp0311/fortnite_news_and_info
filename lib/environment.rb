# require_relative "./fortnite_news_and_info/version"
# require_relative './fortnite_news_and_info/fortnite_news_and_info'
# require_relative './fortnite_news_and_info/api'
# require_relative './fortnite_news_and_info/cli'
require 'uri'
require 'net/http'
require 'openssl'
require 'httparty'
require 'pry'
require 'require_all'


module FortniteNewsAndInfo
  class Error < StandardError; end
  # Your code goes here...
  
  module Findable
    def find_by_name(name)
      self.all.detect {|a| a.name == name}
    end
    def find_or_create_by_name(name)
      find_by_name(name) ? find_by_name(name) : self.create(name)
    end
    def create(name)
      self.new(name)
    end
  end


  module ClassMethods
    def save
      self.all.value << self
    end
    def all
      @@all
    end
    def destroy_all
      self.all.clear
    end
    def count
      self.all.count
    end

  end

end

require_all './lib'