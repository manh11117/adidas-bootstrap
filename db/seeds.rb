# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(id: 1,
             first_name:  "Memphis",
             last_name:  "Depay",
             email: "n-manh@ruby-dev.jp",
             password:              "0915827299",
             password_confirmation: "0915827299",
             activated: true,
             activated_at: Time.zone.now,
             role: 0)

User.create!(id: 2,
             first_name:  "Example",
             last_name:  "User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             activated: true,
             activated_at: Time.zone.now,
             role: 1)

99.times do |n|
  first_name  = Faker::Name.name
  last_name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(id:  n+3,
               first_name:  first_name,
               last_name:  first_name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now,
               role: [0, 1].sample)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Set up the fake following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
