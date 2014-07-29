# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'imdb'
movies = Imdb::Top250.new.movies
movies.each do	|movie|
 Movie.create(title: movie.title, year: movie.year, poster: movie.poster, plot: movie.plot)
end