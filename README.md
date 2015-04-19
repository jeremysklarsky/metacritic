# Metacritic

This is a ruby gem wrapper for Mashape's Metacritic API. As of this version (0.1.0), the gem supports:

1. Getting Metacritic details for a movie or a game
2. Getting a list of critic reviews for a movie or game

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'metacritic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metacritic

## Usage

Using this gem requires an API key. These can be obtained from [Mashape](https://www.mashape.com/byroredux/metacritic). Currently, the free key allows for 1,000 requests per day.

As this gem requires use of a private API key, it is strongly suggested you use Figaro to manage your keys. `metacritic` is configured to access Install `figaro` (see [Figaro](https://github.com/laserlemon/figaro) for instructions) in your application, and place the following in your `application.yml` file:

```ruby
metacritic_api_key: <your key here>
```

##Using the gem

###Searching for a movie

```ruby 
Metacritic.movie(title)
``` 
will return a movie object that has the following attributes:
  `name`, `score`, `rlsdate`, `genres`, `rating`, `thumbnail`, `user_score`, `summary`, `director`, `cast`

Example usage:

```ruby
@movie = Metacritic.movie("The Big Lebowski")
@movie.name = "The Big Lebowski"`
@movie.score = 69```
```
Special cases:
```ruby 
@movie.cast
``` returns an array of the listed actors' names
```ruby 
@movie.genres
``` returns an array of the listed genres.

###Searching for a game

```ruby 
Metacritic.game(title)
``` 
will return a game object that has the following attributes:
`name`,`score`,`rlsdate`,`genre`,`rating`,`platform`,`publisher`,`developer`,`url`

Example usage:

```ruby
@game = Metacritic.game("The Elder Scrolls V: Skyrim")
@game.name = "The Elder Scrolls V: Skyrim"
@game.score = 92
```

###Getting a list of a movie or game's reviews

```ruby 
Metacritic.reviews(metacritic_url)
``` 
will return an array of reviews. 

Example usage: 
```ruby 
Metacritic.reviews("http://www.metacritic.com/game/pc/portal-2")
``` 
will return:
```ruby 
[{
  "critic": "DarkStation",
  "score": "100",
  "excerpt": "Wolfenstein 3D changed how we looked at first person games in 1992 and The New Order, while not as big of a step, may be just as important of one for the future of the genre.",
  "date": "2014-05-28",
  "link": "http://www.darkstation.com/reviews/wolfenstein-the-new-order/"
},
{
  "critic": "Softpedia",
  "score": "90",
  "excerpt": "A great reimagining of the series, delivering a fun experience to shooter fans, while bringing a good story and some solid mechanics that feel fresh but still know the roots of the franchise.",
  "date": "2014-08-06",
  "link": "http://www.softpedia.com/reviews/games/pc/Wolfenstein-The-New-Order-Review-447123.shtml"
}]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/metacritic/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
