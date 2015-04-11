require "metacritic/version"
require "metacritic/movie"
require 'unirest'
require 'figaro'
module Metacritic
  # Your code goes here...
  
  class << self
      attr_accessor :response, :api_key

      def api_key
        self.api_key = ENV['metacritic_api_key']
      end

      def movie(title)
        @response = Unirest.post "https://byroredux-metacritic.p.mashape.com/find/movie",
        headers:{
          "X-Mashape-Key" => api_key,
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

end
