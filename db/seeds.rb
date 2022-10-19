#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'json'
require 'open-uri'

puts 'Cleaning up db'
Movie.destroy_all

puts 'All cleaned'

url = "https://tmdb.lewagon.com/movie/top_rated"
movie_serialized = URI.open(url).read
movie_data = JSON.parse(movie_serialized)
movies = movie_data['results']

20.times do |i|
  Movie.create!(
    title: movies[i - 1]['title'],
    overview: movies[i - 1]['overview'],
    post_url: "https://image.tmdb.org/t/p/original/#{movies[i - 1]['post_path']}",
    rating: movies[i - 1]['vote_average']
  )
end

puts 'Done'
