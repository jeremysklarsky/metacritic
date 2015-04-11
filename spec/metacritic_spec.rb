require 'spec_helper'

describe Metacritic do
  it 'has a version number' do
    expect(Metacritic::VERSION).not_to be nil
  end

  let(:movie) { Metacritic.movie('The Big Lebowski') }

  it "should find a movie's metacritic page" do
    expect(movie).to be_instance_of(Metacritic::Movie)
  end

  it "can give a hash with movie's info" do
    
    @movie = movie.response
    expect(@movie).to be_instance_of(Hash)
  end

  it "knows the movie's details" do 
    expect(movie.name).to eq("The Big Lebowski")
    expect(movie.score).to eq(69)
    expect(movie.rlsdate).to eq("1998-03-06")

    expect(movie.genres).to be_instance_of(Array)
    expect(movie.genres).to include("Crime")

    expect(movie.rating).to eq("R")
    expect(movie.thumbnail).to eq("http://static.metacritic.com/images/products/movies/1/6214dc5d2ae6c69640393af5b6242531-98.jpg")
    expect(movie.user_score).to eq(8.8)
    expect(movie.summary).to include("A scattered farce about a pothead")
    expect(movie.director).to eq("")
    expect(movie.cast).to be_instance_of(Array)
    expect(movie.cast).to include("John Goodman")
    expect(movie.url).to eq("http://www.metacritic.com/movie/the-big-lebowski")

  end
end

