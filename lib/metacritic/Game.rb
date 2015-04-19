module Metacritic
    
  class Game
 
    attr_accessor :response

    def initialize(response)
      @response = response.body["result"]
    end

    def name
      @response["name"]
    end

    def score
      @response["score"].to_i
    end

    def rlsdate
      @response["rlsdate"]
    end

    def genre
      @response["genre"]
    end

    def rating
      @response["rating"]
    end

    def platform
      @response["platform"]
    end

    def publisher
      @response["publisher"]
    end

    def developer
      @response["developer"]
    end

    def url
      @response["url"]
    end
  end
end