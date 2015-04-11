module Metacritic
    
  class Movie

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

    def genres
      @response["genre"].split("\n")
    end

    def rating
      @response["rating"]
    end

    def thumbnail
      @response["thumbnail"]
    end

    def user_score
      @response["userscore"].to_f
    end

    def summary
      @response["summary"]
    end

    def director
      @response["director"]
    end

    def cast
      @response["cast"].split(", ")
    end

    def url
      @response["url"]
    end
  end
end