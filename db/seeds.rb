# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.each do |i|
  25.times do
    sample = [0, 1, 2, 3, 5, 6, 7, 8, 9].sample(4).join
    i.tiny_urls.create!([
      {
        reurl: 'https://google.com',
        base_url: "http://localhost:3000/#{sample}",
        user_id: i.id
      }
    ])
  end
end