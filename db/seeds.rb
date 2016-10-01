# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |n|
  email = Faker::Internet.email
  password = "password"
  name = Faker::Name.first_name
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name
               )
end

n = 1
while n <= 20
  title = Faker::Lorem.sentence
  image_path = File.join(Rails.root, "test/fixtures/images/404.png")
  Post.create!(
    title: title,
    picture: File.new(image_path),
    user_id: n
  )
  n = n + 1
end
