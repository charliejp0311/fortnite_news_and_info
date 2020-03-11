require_relative "./fortnite_news_and_info/version"
require_relative './fortnite_news_and_info/fortnite_news_and_info'
require_relative './fortnite_news_and_info/api'
require_relative './fortnite_news_and_info/cli'
require 'uri'
require 'net/http'
require 'openssl'
require 'httparty'
require 'pry'


module FortniteNewsAndInfo
  class Error < StandardError; end
  # Your code goes here...
end

#require_all './lib'