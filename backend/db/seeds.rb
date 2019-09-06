# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do 
#   User.create(
#     username: Faker::Name.unique.name,
#     password: "123"
#   )
# end

# communities = [
#   "Area51",
#   "ProtectArea51",
#   "WeirdHumans",
#   "EarthTravel",
#   "GalacticEats",
#   "BeingHuman101",
# ]

# 10.times do
#   number=0
#   post = Post.create(
#     user_id: User.all.sample.id,
#     title: "title no#{number+1}",
#     content: Faker::Hipster.paragraph,
#     score: rand(100..10000),
#     views: rand(50..600)
#   )

#   (5..30).to_a.sample.times do
#     Comment.create(
#       post: post,
#       user: User.all.sample,
#       content: Faker::Hipster.paragraph,
#       score: rand(100..1000)
#     )
#     number+1
#   end
# end