puts "creating 15 fake movies"
movies = 15.times.map do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence(word_count: 10),
    poster_url: "https://source.unsplash.com/random",
    rating: rand(0..10.0)
  )
rescue
  retry
end
puts "done!"

puts "creating lists"
genres = %w[mystery horror romance comedy fantasy]
lists = genres.map do |genre|
  List.create!(
    name: genre
  )
end
puts "done!"

puts "creating 30 bookmarks"
10.times do
  bookmark = Bookmark.new(
    comment: Faker::Lorem.sentence(word_count: rand(2..5)),
    movie: movies.sample,
    list: lists.sample
  )
  bookmark.save!
end
puts "done!"
