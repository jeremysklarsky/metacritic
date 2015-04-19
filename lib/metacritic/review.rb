module Metacritic
    
  class Reviews

    attr_accessor :url, :response

    def initialize(url)
      @url = url.gsub("/", "%2F").gsub(":", "%3A")
      call
      @response["result"]
    end

    def call

      @response = Unirest.get "https://byroredux-metacritic.p.mashape.com/reviews?url=#{@url}",
        headers:{
          "X-Mashape-Key" => api_key,
          "Accept" => "application/json"
        }

    end

  end

end