# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
#
User.create!(name: "hxf", email: "hxf@t.tt", password: "111111", password_confirmation: "111111", admin: true, activated_at: Time.zone.now, activated: true)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "111111"
  User.create!(
      name: name,
      email: email,
      password: password,
      password_confirmation: password,
      activated: false,
      activated_at: Time.zone.now
    )
end



users = User.order(:created_at).take(10)
100.times do
  content = Faker::Lorem.sentence
  users.each { |user| user.microposts.create!(content: content) }
end


users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]

following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
