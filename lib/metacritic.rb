require "metacritic/version"
require "metacritic/movie"
require "metacritic/api"
require 'pry'
require 'unirest'
module Metacritic
  # Your code goes here...
  
  class << self
      attr_accessor :response

      API_KEY = "WL8NKy3p2pmsh7MO9dqF96rA6UlPp1iwdRQjsnSeNcXkr81YrR" 

      def movie(title)
        @response = Unirest.post "https://byroredux-metacritic.p.mashape.com/find/movie",
        headers:{
          "X-Mashape-Key" => API_KEY,
          "Content-Type" => "application/x-www-form-urlencoded",
          "Accept" => "application/json"
        },
        parameters:{
          "retry" => 4,
          "title" => title
        }

        Movie.new(@response)
        
      end

  end

  class Error < StandardError; end
  class PermissionError < Error; end
  class InternalServerError < Error; end

end
