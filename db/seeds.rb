#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up db"
Movie.destroy_all

puts "All cleaned"

5.times do
  Movie.create(
    title: Faker::FunnyName.two_word_name
  )
end

puts "Done"
