# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.where(name: 'Guest',
#           username: 'Guest',
#           email: 'guest@guest.com',
#           admin: true).first_or_create

10.times do |x|
  user = User.ids.shuffle.first
  Recipe.create(name: Faker::App.name,
                ingredient: Faker::Lorem.words(4),
                steps: Faker::Hacker.say_something_smart,
                user_id: user,
                remote_image_url: "http://lorempixel.com/400/400/food",
                url: Faker::Internet.url);
        end
